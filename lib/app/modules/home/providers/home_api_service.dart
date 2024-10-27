import 'package:http/http.dart' as http;

class HomeApiService {
  Future<http.Response> getProduct() async {
    String url = "https://fakestoreapi.com/products";
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }
}
