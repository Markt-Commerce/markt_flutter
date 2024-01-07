import 'dart:convert';

import 'package:http/http.dart' as http;

class UserAuthService{

  UserAuthService();

  final String userauthurl = '';

  Future buyersignin(Map<String,String>buyerdata) async{
    var buyerdatajson = jsonEncode(buyerdata);
    http.Response signinResponse = await http.post(Uri.parse(userauthurl),body: buyerdatajson);
    return signinResponse.statusCode == 200;
  }

  Future sellersignin(Map<String,String>sellerdata) async{
    var buyerdatajson = jsonEncode(sellerdata);
    http.Response signinResponse = await http.post(Uri.parse(userauthurl),body: buyerdatajson);
    return signinResponse.statusCode == 200;
  }

  signout(){}
}