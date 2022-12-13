import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetDynamicTheme extends StatelessWidget {
  const BottomSheetDynamicTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Bottom  Sheet'),
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text('Light theme'),
                          onTap: () => {Get.changeTheme(ThemeData.light())},
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text('Dark theme'),
                          onTap: () => {Get.changeTheme(ThemeData.dark())},
                        )
                      ],
                    ),
                  ),
                  barrierColor: Colors.greenAccent.shade100,
                  backgroundColor: Colors.purpleAccent.shade100,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
