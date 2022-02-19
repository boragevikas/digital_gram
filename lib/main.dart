import 'package:digital_gram/HomePage/HomePage.dart';
import 'package:digital_gram/LoginPage/LoginPage.dart';
import 'package:digital_gram/PageLayout/LayoutPage.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // builder: (context, child) => const HomePage(
      //   title: '',
      // ),
      debugShowCheckedModeBanner: false,
      title: 'Digital Gram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(
      //   title: '',
      home: const LoginPage(),
    );
  }
}
