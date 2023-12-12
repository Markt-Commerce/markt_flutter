class CartData {
  late String buyerId;
  late String productId;
  late int quantity;
  late bool hasDiscount;
  late double discountPrice;
  late double discountPercent;
  late String productImage;

  CartData({
    required buyerId,
    required productId,
    required quantity,
    required hasDiscount,
    required discountPrice,
    required discountPercent,
    required productImage,
    });

  factory CartData.parseJSON(Map<String,dynamic> data){
    return CartData(
      buyerId: data['buyer_id'], 
      productId: data['product_id'], 
      quantity: data['quantity'], 
      hasDiscount: data['has_discount'], 
      discountPrice: data['discount_price'],
      discountPercent: data['discount_percent'],
      productImage: data['product_image']);
  }
}