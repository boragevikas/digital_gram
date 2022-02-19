import 'package:flutter/material.dart';

class Files extends StatelessWidget {
  const Files({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "Your Files are Here!!",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }
}
