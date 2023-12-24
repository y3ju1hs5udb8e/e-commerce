import 'package:e_commerce/presenataion/provider/product_providers.dart';
import 'package:e_commerce/presenataion/widgets/detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(getProductsDetail(id));
    return Scaffold(
      body: detail.when(
        data: (data) {
          final prodDetail = data[0];
          return DetailWidget(prodDetail: prodDetail);
        },
        error: (e, s) => Center(child: Text('$e')),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
