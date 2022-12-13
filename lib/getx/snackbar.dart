import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Show Snackbar'),
              onPressed: () {
                Get.snackbar(
                  'Sanckbar title', 'This is snackbar message',
                  // for position
                  snackPosition: SnackPosition.BOTTOM,
                  // for override
                  // titleText: Text('Another text'),
                  // messageText: Text(
                  //   'Another message',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  colorText: Colors.red,
                  backgroundColor: Colors.black,
                  borderRadius: 30,
                  margin: const EdgeInsets.all(10),
                  //maxWidth: 100,
                  // animationDuration: Duration(milliseconds: 3000),
                  // backgroundGradient:
                  //     LinearGradient(colors: [Colors.red, Colors.green]),
                  // borderColor: Colors.purple,
                  // borderWidth: 4,
                  // boxShadows: [
                  //   BoxShadow(
                  //     color: Colors.yellow,
                  //     offset: Offset(30, 50),
                  //     spreadRadius: 20,
                  //     blurRadius: 8,
                  //   )
                  // ],
                  // isDismissible: true,
                  //dismissDirection: SnackDismissDirection.HORIzontal,
                  // forwardAnimationCurve: Curves.bounceInOut,
                  // duration: Duration(microseconds: 3000),
                  // icon: Icon(
                  //   Icons.send,
                  //   color: Colors.white,
                  // ),
                  // shouldIconPulse: false,
                  // leftBarIndicatorColor: Colors.white,
                  // mainButton: FlatButton(
                  //   onPressed: (){},
                  //   color: Colors.green,
                  //   textColor: Colors.white,
                  //   child: Text('Retry'),
                  // ),
                  //
                  // padding: EdgeInsets.all(10),
                  // showProgressIndicator: true,
                  // progressIndicatorBackgroundColor: Colors.deepOrange,
                  // progressIndicatorValueColor:
                  //     AlwaysStoppedAnimation(Colors.white),
                  // reverseAnimationCurve: Curves.bounceInOut,
                  // snackbarStatus: (val) {
                  //   print(val);
                  // },
                  // userInputForm: Form(
                  //     child: Row(
                  //   children: [Expanded(child: TextField())],
                  // )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
