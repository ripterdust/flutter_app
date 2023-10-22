class HospitalEntity {
  final String name;
  final String address;
  final String phone;

  HospitalEntity({
    required this.name,
    required this.address,
    this.phone = "",
  });
}
