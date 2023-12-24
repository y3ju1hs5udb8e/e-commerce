import 'package:e_commerce/data/utlis/colors.dart';
import 'package:e_commerce/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E_Commerce',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        useMaterial3: true,
        scaffoldBackgroundColor: backGroundColor,
      ),
      home: const RootPage(),
    );
  }
}
