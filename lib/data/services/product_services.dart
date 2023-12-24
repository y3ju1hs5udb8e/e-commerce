import 'package:dio/dio.dart';
import 'package:e_commerce/data/model/product_model.dart';
import 'package:e_commerce/data/utlis/api.dart';

class ProductServices {
  static final dio = Dio();

  static Future<List<Product>> getProducts() async {
    try {
      final res = await dio.get(Api.productApi);
      return (res.data as List).map((e) => Product.fromJson(e)).toList();
    } on DioException catch (e) {
      throw '${e.message}';
    }
  }

  static Future<List<Product>> getProductsDetail({required int id}) async {
    try {
      final res = await dio.get('${Api.productApi}/$id');
      return [res.data].map((e) => Product.fromJson(e)).toList();
    } on DioException catch (e) {
      throw '${e.message}';
    }
  }
}
