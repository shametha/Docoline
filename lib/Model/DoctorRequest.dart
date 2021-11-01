import 'package:docoline/Model/UserModel.dart';

class DoctorRequest {
  late bool acceptance;
  late UserModel um;
  late String ReqId;

  DoctorRequest(bool acceptance, UserModel um, String ReqId) {
    this.acceptance = acceptance;
    this.um = um;
    this.ReqId = ReqId;
  }
}
