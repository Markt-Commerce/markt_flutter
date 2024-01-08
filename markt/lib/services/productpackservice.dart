import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductPackService {
  
  ProductPackService();

  final productBaseUrl = '';
  
  Future<List<Map<String,dynamic>>> getRandomProducts()async {
    http.Response response = await http.get(Uri.parse(productBaseUrl));
    if (response.statusCode > 300) {
      throw Exception('cannot get products${response.statusCode}');
    }
    return jsonDecode(response.body);
  }

  Future<List<Map<String,dynamic>>> getProducts() async{
    http.Response response = await http.get(Uri.parse(productBaseUrl));
    if (response.statusCode > 300) {
      throw Exception('cannot get products${response.statusCode}');
    }
    return jsonDecode(response.body);
  }

  Future<List<Map<String,dynamic>>> getProductsUsingCategory() async{
    http.Response response = await http.get(Uri.parse(productBaseUrl));
    if (response.statusCode > 300) {
      throw Exception('cannot get products${response.statusCode}');
    }
    return jsonDecode(response.body);
  }

  Future<List<Map<String,dynamic>>> searchProduct()async{
    http.Response response = await http.get(Uri.parse(productBaseUrl));
    if (response.statusCode > 300) {
      throw Exception('cannot get products${response.statusCode}');
    }
    return jsonDecode(response.body);
  }
}