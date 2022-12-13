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
              onPressed: () async {
                Get.to(
                  Snackbar(),
                  fullscreenDialog: true,
                  transition: Transition.zoom,
                  duration: Duration(milliseconds: 4000),
                  curve: Curves.bounceInOut,
                );
                //go to next screen but can not go back
                //Get.off(Snackbar());
                //go to next screen and cancel all prrevious page
                //Get.offAll(Snackbar());
                //go to next screen with some data
                //Get.to(Snackbar(),arguments: 'Data from this page');
                //go to next screen and recive data from porivious screen
                //var data=await Get.to(Snackbar());
              },
              child: Text('Navigation'),
            )
          ],
        ),
      ),
    );
  }
}
