class UserData {
  const UserData({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.carModel,
    required this.carType,
    required this.yearModel,
    required this.phoneNumber,
  });

  final String? id;
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String carType;
  final String carModel;
  final String yearModel;
  final String phoneNumber;
}
