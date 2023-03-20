import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_statemangement/Basic/BottomSheet.dart';
import 'package:getx_statemangement/Basic/Snackbar.dart';
import 'package:getx_statemangement/Basic/navgatorWithGetX/SecandHome.dart';
import 'package:getx_statemangement/StateMangeMent/Obx_StateMangeMent.dart';
import 'Basic/DialogGetx.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Get x Basic"),),

        body:
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          color: Colors.black,
          child: ListView(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext builder) => Snackbar()));
                    },
                    child: Text("Snackbar"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext builder) => DialogGetx()));
                    },
                    child: Text("Dialog"),
                  ),

                  RaisedButton(
                    onPressed: () {
                      Get.to(BottomSheetApp());
                      // Navigator.push(context, MaterialPageRoute(builder: (BuildContext builder)=>BottomSheetApp()));
                    },
                    child: Text("Bottom Sheet"),
                  ),


                  RaisedButton(
                    onPressed: () {
                      Get.to(Obx_StateMangeMent());
                      // Navigator.push(context, MaterialPageRoute(builder: (BuildContext builder)=>BottomSheetApp()));
                    },
                    child: Text("StateMangeMent"),
                  ),



                  RaisedButton(
                    onPressed: () async {
                      var data= await Get.to(SecandHome(),arguments: "Data Send from Home To SecandHome");

                      print(data);
                      // Get.to(SecandHome(),arguments: "Data Send from Home To SecandHome");
                    //   // use to remove screan and move to page
                    // Get.off(SecandHome());
                    //   // use to remove all screan and move to page
                    // Get.offAll(SecandHome());
                    },
                    child: Text("Second Screen"),
                  ),
                ],
              ),
            ],
          ),
        )

    );
  }

}