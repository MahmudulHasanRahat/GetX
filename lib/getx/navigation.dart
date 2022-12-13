import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/getx/snackbar.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  Snackbar(),
                  fullscreenDialog: true,
                  transition: Transition.zoom,
                  duration: Duration(milliseconds: 4000),
                  curve: Curves.easeOutQuart,
                );
              },
              child: Text('Navigation'),
            )
          ],
        ),
      ),
    );
  }
}
