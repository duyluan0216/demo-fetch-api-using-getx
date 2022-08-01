import 'dart:convert';

import 'package:getx_fetch/productmodule/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();
  static String baseUrl = 'makeup-api.herokuapp.com';

  static Future<List<WelCome>> fetchProducts() async {
    var uri =
        Uri.https(baseUrl, 'api/v1/products.json', {'brand': 'marienatie'});
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var json = jsonDecode(jsonString);
      return welcomeFromJson(json);
    }
    return [];
  }
}
