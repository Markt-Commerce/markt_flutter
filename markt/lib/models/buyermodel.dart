class BuyerModel {
  late int id;
  late String uniqueId;
  late String email;
  late String password;
  late String profilePicture;
  late String phoneNumber;
  late double longitude;
  late double latitude;
  late int houseNumber;
  late String street;
  late String city;
  late String state;
  late String country;
  late int postalCode;
  late String userType;
  late String userStatus;

  BuyerModel({
    id,
    required uniqueId
  });
}