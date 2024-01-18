import 'dart:convert';
import 'package:http/http.dart' as http;

class BuyerRequestService {

  BuyerRequestService();

  final buyerRequestUrl = "";

  Future<List<Map<String,dynamic>>> getRequests(String category)async{
    http.Response response  = await http.get(Uri.parse(buyerRequestUrl));
    if (response.statusCode != 200) {
      throw Exception("could not get requests. check your internet connection");
    }
    return jsonDecode(response.body);
  }

  Future<List<Map<String,dynamic>>> getBuyerRequests(String buyerId)async{
    http.Response response  = await http.get(Uri.parse(buyerRequestUrl));
    if (response.statusCode != 200) {
      throw Exception("could not get buyer requests. check your internet connection");
    }
    return jsonDecode(response.body);
  }

  createBuyerRequest(Map<String,dynamic> data)async {
    http.Response response  = await http.post(Uri.parse(buyerRequestUrl),body: data);
    if (response.statusCode != 202) {
      throw Exception("could not get buyer requests. check your internet connection");
    }
    return jsonDecode(response.body);
  }

  deleteBuyerRequest(Map<String,dynamic> data)async {}

}