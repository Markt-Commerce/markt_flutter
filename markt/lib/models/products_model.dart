class Product {
  late String sellerId;
  late String productName;
  late String description;
  late double productPrice;
  late int quantity;
  late String category;
  late String productId;
  late List<String> productImages;

  Product({
  required sellerId,required productName,required description, required productPrice,
  required quantity,required category,required productId,productImages,
  });

  List<Product> packetfromJSON(List<Map<String,dynamic>> productdata){
    final productList = <Product>[];
    for (var product in productdata) {
      productList.add(
        Product(
          sellerId: product["seller_id"], productName: product["product_name"], description: product["description"], 
          productPrice: product["product_price"], quantity: product["quantity"], category: product["category"], 
          productId: product["product_id"])
      );
    }
    return productList;
  }

  factory Product.fromJSON(Map<String,dynamic> product){
    return Product(
      sellerId: product["seller_id"], productName: product["product_name"], description: product["description"], 
      productPrice: product["product_price"], quantity: product["quantity"], category: product["category"], 
      productId: product["product_id"]);
  }

  Map<String,dynamic> productToJSONMap(){
    return {
      "seller_id":sellerId,
      "product_name":productName,
      "description":description,
      "product_price":productPrice,
      "quantity":quantity,
      "category":category,
      "product_id":productId
    };
  }

}