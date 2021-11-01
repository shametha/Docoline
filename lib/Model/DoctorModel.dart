class DoctorModel {
  late String Name;
  late String Specialisation;
  late String Address;
  late String Password;
  late String DoctorId;

  DoctorModel(
      {required String Name,
      required String Specialisation,
      required String Address,
      required String Password,
      required String DoctorId}) {
    this.Name = Name;
    this.Specialisation = Specialisation;
    this.Address = Address;
    this.Password = Password;
    this.DoctorId = DoctorId;
  }
}
