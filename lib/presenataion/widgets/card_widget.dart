import 'package:e_commerce/presenataion/pages/detail_page.dart';
import 'package:e_commerce/presenataion/provider/product_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardWidget extends ConsumerWidget {
  final bool price;
  const CardWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final products = ref.watch(getProducts);
    return products.when(
      data: (data) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            final prod = data[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(id: prod.id),
                  ),
                );
              },
              child: Container(
                height: 340,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      prod.image,
                      height: 200,
                      width: 230,
                    ),
                    Container(
                      height: 105,
                      width: 225,
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            prod.title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            prod.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (price == true)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        width: 230,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Price: \$${prod.price}',
                              style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: BeveledRectangleBorder(
                                  side: const BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              icon: const Icon(Icons.add, size: 25),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
      error: (e, s) => Center(child: Text('$e')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
