import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/getx/bottom_sheetand_dynamic_theme.dart';
import 'package:getx_practice/getx/navigation.dart';
import 'getx/snackbar.dart';
import 'getx/dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snackbar',
      // Routeing
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => BottomSheetDynamicTheme()),
        GetPage(name: '/dialog', page: () => Dialog()),
        //specified transition
        GetPage(
            name: '/snzckbar',
            page: () => Snackbar(),
            transition: Transition.leftToRight),
      ],
      //home: Navigation(),
    );
  }
}
