import 'package:add_cart_using_getx/controller/demoController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DemoPage extends StatelessWidget {
  final DemoController ctrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(Get.arguments),
            ),
            SwitchListTile(
              value: ctrl.isDark,
              onChanged: ctrl.changeTheme,
              title: Text("Touch to change Thememod"),
            ),
            ElevatedButton(
              onPressed: () => Get.snackbar(
                  "Snacbar", "Hello this is Snackbar massege",
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.white,
                  backgroundColor: Colors.black87),
              child: Text("Snack Bar"),
            ),
            ElevatedButton(
              onPressed: () => Get.defaultDialog(
                  title: "Dialogue", content: Text("Hey from dialogue")),
              child: Text("Dialogue"),
            ),
            ElevatedButton(
              onPressed: () => Get.bottomSheet(Container(
                height: 150,
                color: Colors.white,
                child: Text(
                  "Hello From Buttom sheet",
                  style: TextStyle(fontSize: 30.0),
                ),
              )),
              child: Text("Bottom sheet"),
            ),
            ElevatedButton(
              onPressed: () => Get.offNamed('/'),
              child: Text("Back To Home"),
            ),
          ],
        ),
      ),
    );
  }
}
