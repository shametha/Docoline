import 'package:docoline/Model/DoctorModel.dart';

class UserRequest {
  late bool acceptance;
  late DoctorModel dm;
  late String ReqId;

  UserRequest(bool acceptance, DoctorModel dm, String ReqId) {
    this.acceptance = acceptance;
    this.dm = dm;
    this.ReqId = ReqId;
  }
}
