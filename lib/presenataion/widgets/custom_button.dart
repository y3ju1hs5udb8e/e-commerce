import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: MediaQuery.of(context).size.height * 0.08,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: Colors.green,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Add To Cart',
            style: TextStyle(
              fontSize: 27,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
