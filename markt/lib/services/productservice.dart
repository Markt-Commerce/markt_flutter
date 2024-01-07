import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:markt/models/products_model.dart';

class ProductService{

  ProductService();

  final productBaseUrl = '';

  Future<Map<String,dynamic>> getProduct() async{
    http.Response response = await http.get(Uri.parse(productBaseUrl));
    if (response.statusCode > 300) {
      throw Exception('Could not get product');
    }
    else{
      return jsonDecode(response.body);
    }
  }

  Future<dynamic> createProduct(Product productdata) async{
    final stringifiedProductData = jsonEncode(productdata.productToJSONMap());
    http.Response response = await http.post(Uri.parse(productBaseUrl),body: stringifiedProductData);
    return {
      "status_code":response.statusCode,
      "message":response.reasonPhrase
    };
  }

  //TODO: check the method of deletion in the server side
  Future<dynamic> deleteProduct(Product productdata) async{
    http.Response response = await http.delete(Uri.parse(productBaseUrl),body: productdata.productId);
    return {
      "status_code":response.statusCode,
      "message":response.reasonPhrase
    };
  }
}