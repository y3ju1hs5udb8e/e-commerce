import 'package:e_commerce/presenataion/provider/product_providers.dart';
import 'package:e_commerce/presenataion/widgets/detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HotPage extends ConsumerWidget {
  const HotPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final datas = ref.watch(getProducts);
    return datas.when(
      data: (data) {
        return RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(milliseconds: 1500), () {});
            ref.invalidate(getProducts);
          },
          child: PageView.builder(
            itemCount: data.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final prodDetail = data[index];
              return DetailWidget(prodDetail: prodDetail);
            },
          ),
        );
      },
      error: (e, s) => Center(child: Text('$e')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
