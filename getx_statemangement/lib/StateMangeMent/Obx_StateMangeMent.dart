import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemangement/StateMangeMent/GetxContorlr.dart';

class Obx_StateMangeMent extends StatelessWidget{

  // var count = RxInt(0) ;
  // ==
  var count = 0.obs ;
  var nameToUpperr = "diaa".obs ;
  // var nameToUpperr = RxString("diaa");

  void increment(){
    count++;
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Obx"),),

      body: ListView(

        children: [

          Column(

            children: [

              Obx(()=>Text("count is :$count ")),

              RaisedButton(
                autofocus: true,
                onPressed: () {
                  increment();
                },
                child: Text("Increment"),
              ),


              Obx(()=>Text("nameToUpperr is :$nameToUpperr ")),

              RaisedButton(
                autofocus: true,
                onPressed: () {
                  Get.to(GetxContorlr());
                },
                child: Text("CetXController"),
              ),


            ],
          )


        ],
      ),
    );
  }
}