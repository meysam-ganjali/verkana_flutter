import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String str1;
   HomePage({super.key, required this.str1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(str1)),
    );
  }
}