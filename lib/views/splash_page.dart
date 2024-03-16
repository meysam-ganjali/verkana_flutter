import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:verkana_app/settings/color_pallet.dart';
import 'package:verkana_app/views/home_page.dart';

class SplahPage extends StatefulWidget {
  const SplahPage({super.key});

  @override
  State<SplahPage> createState() => _SplahPageState();
}

class _SplahPageState extends State<SplahPage> {
  late String string;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<void> loadData() async {
    var dio = Dio();
    var response = await dio.request(
      'https://jsonplaceholder.typicode.com/users',
      options: Options(
        method: 'GET',
      ),
    );
    setState(() {
      string = response.data[3]['name'];
      if (string.isNotEmpty) {
        isLoading = false;
      }
    });
    if(!isLoading){
      await onDoneLoading();
    }
  }

  onDoneLoading() async {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => HomePage(str1: string)),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallets.darkonSecondary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/logo.png")),
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: Text(
                "قـــــهوه ورکـــانا",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, wordSpacing: 8),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: LinearProgressIndicator(
                  backgroundColor: ColorPallets.black,
                  valueColor:
                      AlwaysStoppedAnimation(ColorPallets.darkonPrimary),
                  minHeight: 15,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
