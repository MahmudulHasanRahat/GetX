import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/getx/bottom_sheetand_dynamic_theme.dart';
import 'package:getx_practice/getx/navigation.dart';
import 'getx/snackbar.dart';
import 'getx/dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Snackbar',
      home: Navigation(),
    );
  }
}
