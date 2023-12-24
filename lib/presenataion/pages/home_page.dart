import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.black12),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    color: Colors.black45,
                  ),
                  BoxShadow(
                    offset: Offset(-1, -1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    color: Colors.white,
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(),
                icon: const Icon(
                  CupertinoIcons.back,
                  size: 26,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 63,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  border: InputBorder.none,
                  hintText: 'Search Product',
                  suffixIcon: Icon(
                    CupertinoIcons.search,
                    size: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hot Sell',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.blue[400],
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 350,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: const CardWidget(price: false),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hot Sell',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.blue[400],
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 400,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: const CardWidget(price: true),
            ),
          ],
        ),
      ),
    );
  }
}
