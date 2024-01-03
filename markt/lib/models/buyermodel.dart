class BuyerModel {
  late int id;
  late String uniqueId;
  late String email;
  late String profilePicture;
  late String phoneNumber;
  late String userType;
  late String userStatus;

  BuyerModel({
    id,
    required uniqueId,
    required email,
    required profilePicture,
    required phoneNumber,
    required userType,
    required userStatus
  });

  factory BuyerModel.fromJSON(Map<String,dynamic>buyerdata){
    return BuyerModel(
      uniqueId: buyerdata["uniqueId"], 
      email: buyerdata["email"],  
      profilePicture: buyerdata["profilePicture"], 
      phoneNumber: buyerdata["phoneNumber"], 
      userType: buyerdata["userType"], 
      userStatus: buyerdata["userStatus"]
      );
  }

  toJson(BuyerModel data){
    return <String,dynamic>{
      "uniqueId": data.uniqueId, 
      "email": data.email,  
      "profilePicture": data.profilePicture, 
      "phoneNumber": data.phoneNumber, 
      "userType": data.userType, 
      "userStatus": data.userStatus
    };
  }
}