import 'package:e_commerce/data/services/product_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getProducts = FutureProvider((ref) => ProductServices.getProducts());

final getProductsDetail = FutureProvider.family(
    (ref, int id) => ProductServices.getProductsDetail(id: id));
