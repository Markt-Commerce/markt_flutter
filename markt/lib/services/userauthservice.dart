import 'package:http/http.dart' as http;

class UserAuthService{

  UserAuthService();

  final String userauthurl = '';

  Future buyersignin(Map<String,String>buyerdata) async{
    http.Response signinResponse = await http.post(Uri.parse(userauthurl),body: buyerdata);
    return signinResponse.statusCode == 200;
  }

  Future sellersignin(Map<String,String>sellerdata) async{
    http.Response signinResponse = await http.post(Uri.parse(userauthurl),body: sellerdata);
    return signinResponse.statusCode == 200;
  }

  signout(){}
}