import 'package:e_commerce/presenataion/pages/home_page.dart';
import 'package:e_commerce/presenataion/pages/hot_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;

  void changePage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  List<Widget> pages = const [
    HomePage(),
    HotPage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        onTap: changePage,
        currentIndex: pageIndex,
        elevation: 0,
        type: BottomNavigationBarType.shifting,
        items: const [
          //home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          //wallet
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_fire_department,
              color: Colors.black,
            ),
            label: 'Hot',
          ),
          //static
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.shopping_cart,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
          //profile
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
