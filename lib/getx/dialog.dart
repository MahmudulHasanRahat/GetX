import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogExcercise extends StatelessWidget {
  const DialogExcercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Get.defaultDialog();
                //Customize
                Get.defaultDialog(
                  title: 'Dailog title',
                  titleStyle: TextStyle(fontSize: 25),
                  middleText: 'This is middle title',
                  middleTextStyle: TextStyle(fontSize: 20),
                  backgroundColor: Colors.red,
                  radius: 10,
                  //To customize midddle text
                  content: Row(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Text('Data loading'),
                      )
                    ],
                  ),
                  //Defult cancel and confirm button
                  textCancel: 'Cancel',
                  cancelTextColor: Colors.white,
                  textConfirm: 'Confirm',
                  confirmTextColor: Colors.white,
                  onCancel: () {},
                  onConfirm: () {},
                  buttonColor: Colors.green,
                  //customize the defult cancel and confirm button
                  //override the defult cancel and confirm button
                  cancel: Text(
                    'Cancels',
                    style: TextStyle(color: Colors.white),
                  ),
                  confirm: Text(
                    'Confirms',
                    style: TextStyle(color: Colors.white),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Action-1'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Action-2'),
                    ),
                  ],
                  //barrierDismissible: false,
                );
              },
              child: Text('Show Dialog'),
            )
          ],
        ),
      ),
    );
  }
}
