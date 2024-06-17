class BloodRequestModel {
  int? id;
  int? age;
  String? name;
  String? phoneNumber;
  String? aadharNumber;
  String? bloodGroup;
  String? hospitalName;
  String? hospitalLocation;
  BloodRequestModel({
    required this.id,
    required this.age,
    required this.name,
    required this.phoneNumber,
    required this.aadharNumber,
    required this.bloodGroup,
    required this.hospitalName,
    required this.hospitalLocation,
  });
}

List<BloodRequestModel> bloodRequest = [];
