import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecandHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("SecandHome"),),

      body: ListView(
        children: [
        Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("SecandHome"),),

          RaisedButton(
            onPressed: () {
              Get.back(result: "data back");
            },
            child: Text("BAck"),
          ),

          Center(child: Text("Data from Home"),),
          SizedBox(height: 22,),
          Center(child: Text("${Get.arguments}"),),

        ],
      )
        ],
      )

    );
  }
}