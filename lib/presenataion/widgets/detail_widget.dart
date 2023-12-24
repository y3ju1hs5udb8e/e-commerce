import 'package:e_commerce/data/model/product_model.dart';
import 'package:e_commerce/presenataion/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  final Product prodDetail;
  const DetailWidget({super.key, required this.prodDetail});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              prodDetail.image,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.37,
            ),
            Text(
              prodDetail.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 27,
              ),
            ),
            Container(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    prodDetail.category,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'At: \$${prodDetail.price}',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Description:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              prodDetail.description,
              maxLines: 3,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 23,
              ),
            ),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}
