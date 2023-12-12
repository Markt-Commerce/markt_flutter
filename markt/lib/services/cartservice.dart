import 'dart:convert';
import 'package:markt/models/cart_model.dart';
import 'package:http/http.dart' as http;

class CartService {
  
  CartService();

  Future<List<CartData>> getbuyercartitems(String buyerId) async{
    final response = await http.get(Uri.parse(''));
    
    List<CartData> cartlist = [];
    if (response.statusCode > 300) {
      throw Exception("");
    }
    else{
      final decodedbody = jsonDecode(response.body);
      for (var i = 0; i < decodedbody; i++) {
        cartlist.add(CartData.parseJSON(decodedbody));
      }
      return cartlist;
    }
  }
}