import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> checkUserExist(String UserID) async {
  late bool res;
  await FirebaseFirestore.instance
      .collection('User')
      .doc(UserID)
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      res = true;
    } else {
      res = false;
    }
  });
  return res;
}

Future<bool> checkLoginCredential(String UserID, String password) async {
  bool res = false;
  await FirebaseFirestore.instance
      .collection('User')
      .doc(UserID)
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      dynamic data = documentSnapshot.data();
      if (data['Password'] == password) res = true;
    } else {
      res = false;
    }
  });
  return res;
}
