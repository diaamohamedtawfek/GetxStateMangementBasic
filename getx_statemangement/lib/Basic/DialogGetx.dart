
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DialogGetx extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(title: Text("DialogGetx"),),

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
                 Get.defaultDialog(
                   title: "GetX Dialog",
                   content: Text("data Dialog GetX "),
                   barrierDismissible: true,
                   backgroundColor: Colors.indigo,
                   middleText: "middleText",
                   actions: [
                     RaisedButton(onPressed: (){
                       Navigator.pop(context);
                     },
                       child: Text("action 1",style: TextStyle(color: Colors.white),),
                     ),
                   ],

                   cancel: RaisedButton(onPressed: (){
                     Navigator.pop(context);
                   },
                   child: Text("Cancel",style: TextStyle(color: Colors.white),),
                   ),
                   cancelTextColor: Colors.white,


                   confirm: RaisedButton(onPressed: (){
                     Navigator.pop(context);
                   },
                     child: Text("Done",style: TextStyle(color: Colors.white),),
                   ),

                 );// end dialog
               },



               child: Text("DialogGetX"),
             ),

           ],
         ),
       ),
     );
  }
}