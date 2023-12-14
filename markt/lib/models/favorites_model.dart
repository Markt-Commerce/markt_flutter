class FavoritesData {
  late String id;
  late String buyerId;
  late String favoriteItemId;
  late String favoriteType;
  late String thumbnail;

  FavoritesData({
    id,
    required buyerId,
    required favoriteItemId,
    required favoriteType,
    required thumbnail
  });

  factory FavoritesData.parseJSON(Map<String,dynamic>jsondata){
    return FavoritesData(
      id: jsondata,
      buyerId: jsondata,
      favoriteItemId: jsondata, 
      favoriteType: jsondata, 
      thumbnail: jsondata
      );
  }

  toJSON(FavoritesData favoritedata){
    return <String,dynamic>{
        "id":favoritedata.id,
        "buyer_id":favoritedata.buyerId,
        "favorite_item_id":favoritedata.favoriteItemId,
        "favorite_type":favoritedata.favoriteType,
        "thumbnail":favoritedata
    };
  }
}