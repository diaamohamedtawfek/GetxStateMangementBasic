import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("BottomSheet "),),

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
              Get.bottomSheet(

                Container(
                  color: Colors.indigo,
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.vertical,
                    children: [


                      Text("data"),

                      RaisedButton(onPressed: (){
                        Get.changeTheme(ThemeData.dark());
                      },
                        child: Text("ThemeData.dark"),
                      ),

                      RaisedButton(onPressed: (){
                        Get.changeTheme(ThemeData.light());
                      },
                        child: Text("ThemeData.dark"),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.indigo,


              );// end bottomSheet
              },



              child: Text("bottomSheet"),
            ),

          ],
        ),
      ),
    );
  }
}