import 'dart:convert';
import 'package:http/http.dart' as http;

class CategoryService {

  CategoryService();

  final String mainurl = '';
  final String categorynamesurl = 'http://localhost/markt_php/categories_add.php?type=main_names';
  final String tagsurl = ''; 

  Future<List<Map<String,dynamic>>> getCategories() async{
    http.Response response = await http.get(Uri.parse(mainurl));
    if (response.statusCode > 300) {
      throw Exception('Cannot get categories.... retrying');
    }
    else{
      return jsonDecode(response.body);
    }
  }

  Future<List<String>>getCategoryNames() async{
    http.Response response = await http.get(Uri.parse(categorynamesurl));
    if (response.statusCode > 300) {
      throw Exception('Cannot get categorynames.... retrying');
    }
    else{
      return jsonDecode(response.body);
    }
  }

  Future<List>getTags() async{
    http.Response response = await http.get(Uri.parse(tagsurl));
    if (response.statusCode > 300) {
      throw Exception('Cannot get tags.... retrying');
    }
    else{
      return jsonDecode(response.body);
    }
  }
}