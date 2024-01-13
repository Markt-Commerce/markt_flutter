class OrderModel {
  
  late String orderId;
  late String sellerId;
  late int productQuantity;
  late String orderDate;
  late String productName;
  late num totalPrice;
  late String productId;
  late String productImage;
  late String buyerId;
  late String buyerName;

  OrderModel();
}

class AcceptedOrders extends OrderModel{}

class UnacceptedOrders extends OrderModel{}

class BuyerOrders extends OrderModel{}