class BuyerRequests {

  late String buyerName;
  late String city;
  late String state;
  late String profileImage;
  late String queryId;
  late String message;
  late String buyerId;
  late String category;
  late String staleTime;

  BuyerRequests({
    required buyerName,
    required city,
    required state,
    required profileImage,
    required queryId,
    required message,
    required buyerId,
    required category,
    required staleTime,
  });

   Iterable<BuyerRequests> listFromJSON(List<Map<String,dynamic>> data){
    return data.map((e) => BuyerRequests(buyerName: e["buyer_name"], city: e["city"], state: e["state"],
     profileImage: e["profile_image"], queryId: e["query_id"], message: e["message"], 
     buyerId: e["buyer_id"], category: e["category"], staleTime: e["stale_time"]));
  }

  factory BuyerRequests.fromJSON(Map<String,dynamic> data){
    return BuyerRequests(buyerName: data["buyer_name"], city: data["city"], state: data["state"],
     profileImage: data["profile_image"], queryId: data["query_id"], message: data["message"], 
     buyerId: data["buyer_id"], category: data["category"], staleTime: data["stale_time"]);
  }

}