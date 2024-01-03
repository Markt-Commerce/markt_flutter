class SellerModel {
  late int id;
  late String uniqueId;
  late String shopName;
  late String description;
  late String category;
  late int totalRating;
  late int totalRaters;
  late String directions;
  late String email;
  late String profilePicture;
  late String phoneNumber;
  late String userType;
  late String userStatus;

  SellerModel({
    required id,
    required uniqueId,
    required shopName,
    description,
    category,
    required totalRating,
    required totalRaters,
    directions,
    required email,
    profilePicture,
    phoneNumber,
    required userType,
    required userStatus,
    });

  factory SellerModel.fromJSON(Map<String,dynamic>userdata){
    return SellerModel(
      id: userdata["id"], 
      uniqueId: userdata["uniqueId"], 
      shopName: userdata["shopName"],
      description: userdata["description"],
      directions: userdata["directions"], 
      totalRating: userdata["totalRating"], 
      totalRaters: userdata["totalRaters"], 
      profilePicture: userdata["profilePicture"],
      phoneNumber: userdata["phoneNumber"],
      email: userdata["email"], 
      userType: userdata["useType"], 
      userStatus: userdata["userStatus"]
      );
  }

  tojson(SellerModel data){
    return <String,dynamic>{
      "id": data.id, 
      "uniqueId": data.uniqueId,
      "shopName": data.shopName,
      "description": data.description,
      "directions": data.directions,
      "totalRating": data.totalRating,
      "totalRaters": data.totalRaters,
      "profilePicture": data.profilePicture,
      "phoneNumber": data.phoneNumber,
      "email": data.email,
      "userType":  data.userType,
      "userStatus": data.userStatus
    };
  }
}