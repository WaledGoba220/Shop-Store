// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:store_app_shop/controller/data/api.dart';
import 'package:store_app_shop/model/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProduct(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: "https://fakestoreapi.com/products/category/${categoryName}");

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
