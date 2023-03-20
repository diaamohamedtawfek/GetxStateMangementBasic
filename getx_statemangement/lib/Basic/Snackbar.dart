import 'package:get/get.dart';
import 'package:flutter/material.dart';


class Snackbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Snackbar"),),

      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {


                Get.snackbar(
                    "SnackBar",
                    "SnackBar message",
                  snackPosition: SnackPosition.BOTTOM,
                  margin: EdgeInsets.all(12),
                  backgroundColor: Colors.black,
                  colorText: Colors.white,
                  animationDuration: Duration(seconds: 6),

                );
              },

              child: Text("Snackbar"),
            ),
          ],
        ),
      ),
    ),
    );
  }

}