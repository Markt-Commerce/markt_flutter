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
      uniqueId: userdata["unique_id"], 
      shopName: userdata["shop_name"],
      description: userdata["description"],
      directions: userdata["directions"], 
      totalRating: userdata["total_rating"], 
      totalRaters: userdata["total_raters"], 
      profilePicture: userdata["profile_picture"],
      phoneNumber: userdata["phone_number"],
      email: userdata["email"], 
      userType: userdata["user_type"], 
      userStatus: userdata["user_status"]
      );
  }

  tojson(SellerModel data){
    return <String,dynamic>{
      "id": data.id, 
      "unique_id": data.uniqueId,
      "shop_name": data.shopName,
      "description": data.description,
      "directions": data.directions,
      "total_rating": data.totalRating,
      "total_raters": data.totalRaters,
      "profile_picture": data.profilePicture,
      "phone_number": data.phoneNumber,
      "email": data.email,
      "user_type":  data.userType,
      "user_status": data.userStatus
    };
  }
}