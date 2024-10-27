import 'dart:convert';

import 'package:api_intrigation/app/data/model/product_model.dart';
import 'package:api_intrigation/app/modules/home/providers/home_api_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  late HomeApiService homeApiService;
  List<ProductModel> products = [];

  @override
  void onInit() {
    homeApiService = HomeApiService();
    getCategories();
    super.onInit();
  }

  void getCategories() async {
    try {
      http.Response response = await homeApiService.getProduct();
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        for (int i = 0; i < data.length; i++) {
          products.add(ProductModel.fromJson(data));
        }
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
