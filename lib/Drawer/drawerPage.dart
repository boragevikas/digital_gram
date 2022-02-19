// ignore_for_file: camel_case_types, avoid_returning_null_for_void

import 'package:digital_gram/HomePage/HomePage.dart';
import 'package:digital_gram/LoginPage/LoginPage.dart';
import 'package:digital_gram/LoginPage/SignUp.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

class drawerPage extends StatelessWidget {
  const drawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Profile'),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.book),
          title: const Text('News'),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.share),
          title: const Text('Share'),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Profile'),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.book),
          title: const Text('News'),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.share),
          title: const Text('Share'),
          onTap: () => null,
        ),
      ],
    ));
  }
}
