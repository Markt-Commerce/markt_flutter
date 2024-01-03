class UserAddress{
  late double longitude;
  late double latitude;
  late int houseNumber;
  late String street;
  late String city;
  late String state;
  late String country;
  late int postalCode;

  UserAddress({longitude,latitude,houseNumber,street,city,state,country,postalCode});

  factory UserAddress.addressFromJSON(Map<String,dynamic>jsonaddress){
    return UserAddress(
      longitude: jsonaddress["longitude"],
      latitude: jsonaddress["latitude"],
      houseNumber: jsonaddress["houseNumber"],
      state: jsonaddress["state"],
      street: jsonaddress["street"],
      city: jsonaddress["city"],
      country: jsonaddress["country"],
      postalCode: jsonaddress["postalCode"]
    );
  }
}