import 'package:docoline/Model/DoctorModel.dart';
import 'package:docoline/Model/DoctorRequest.dart';
import 'package:docoline/Model/UserModel.dart';
import 'package:docoline/Model/UserRequest.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreUpdator {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addUser(
      {required String Name,
      required String Age,
      required String Height,
      required String Weight}) async {
    CollectionReference users = firestore.collection('User');
    users.add({
      'Name': Name,
      'Age': Age,
      'Height': Height,
      'Weight': Weight,
    });
  }

  Future<void> addDoctor(
      {required String Name,
      required String Address,
      required String Specialisation,
      required String Password}) async {
    CollectionReference users = firestore.collection('Doctor');
    users.add({
      'Name': Name,
      'Address': Address,
      'Specialisation': Specialisation,
      'Password': Password,
    });
  }

  Future<List<DoctorModel>> getDoctors() async {
    List<DoctorModel> DoctorList = [];
    CollectionReference users = firestore.collection('Doctor');
    await users.get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        DoctorModel dm = new DoctorModel(
            Name: doc['Name'],
            Specialisation: doc['Specialisation'],
            Address: doc['Address'],
            Password: doc['Password'],
            DoctorId: doc.id);
        DoctorList.add(dm);
      });
    });
    print(DoctorList);
    return DoctorList;
  }

  Future<List<DoctorRequest>> getDoctorRequest(String doctorId) async {
    List<DoctorRequest> userList = [];
    CollectionReference users = firestore.collection('Request');
    var q = await users.where('DoctorId', isEqualTo: doctorId).get();
    for (int i = 0; i < q.docs.length; i++) {
      print(q.docs.length);
      CollectionReference UserDet = firestore.collection('User');
      await UserDet.doc(q.docs[i]['PatientId']).get().then((value) {
        UserModel um = new UserModel(
            Name: value['Name'],
            Age: value['Age'],
            Height: value['Height'],
            Weight: value['Weight'],
            Password: value['Password'],
            UserId: value.id);
        DoctorRequest ur =
            new DoctorRequest(q.docs[i]['Acceptance'], um, q.docs[i].id);
        userList.add(ur);
        print(ur.ReqId);
      });
    }
    print(userList);
    return userList;
  }

  //Shows all the doctors to whom a request has been made by a particular user
  Future<List<UserRequest>> getUserRequest(String UserId) async {
    List<UserRequest> doctorList = [];
    CollectionReference doctors = firestore.collection('Request');
    var qs = await doctors.where('PatientId', isEqualTo: UserId).get();
    for (int i = 0; i < qs.docs.length; i++) {
      CollectionReference DocDet = firestore.collection('Doctor');
      await DocDet.doc(qs.docs[i]['DoctorId']).get().then((value) {
        print(value.data());
        DoctorModel dm = new DoctorModel(
            Name: value['Name'],
            Specialisation: value['Specialisation'],
            Address: value['Address'],
            Password: value['Password'],
            DoctorId: value.id);
        UserRequest ur =
            new UserRequest(qs.docs[i]['Acceptance'], dm, qs.docs[i].id);
        doctorList.add(ur);
      });
    }

    print(doctorList);
    return doctorList;
  }

  Future<void> addUserRequest({
    required String UserId,
    required String DoctorId,
  }) async {
    CollectionReference users = firestore.collection('Request');
    users.add({
      'DoctorId': DoctorId,
      'PatientId': UserId,
      'Acceptance': false,
    });
  }

  Future<void> acceptRequest({
    required String ReqId,
    required bool accept,
  }) async {
    CollectionReference users = firestore.collection('Request');
    users.doc(ReqId).update({'Acceptance': !accept});
  }
}
