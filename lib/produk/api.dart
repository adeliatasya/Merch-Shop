import 'package:uas_prakmobile/models/Produk.dart';
import 'package:http/http.dart' as http;

class Api {
  final String baseUrl =
      'https://developers.google.com/shopping-content/guides/products/products-api';

  Future getProduk() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      var limit;
      if (produkFromJson(response.body).limit == 30) {
        return produkFromJson(response.body).resources;
      } else {
        return null;
      }
    } catch (e) {
      return e;
    }
  }
}

final api = Api();
