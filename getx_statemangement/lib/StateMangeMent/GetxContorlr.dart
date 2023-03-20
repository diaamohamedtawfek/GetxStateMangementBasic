import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemangement/StateMangeMent/IncrementContrler.dart';

class GetxContorlr extends StatelessWidget{

  IncrementContrler inc=Get.put(IncrementContrler());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("GetxControler"),),

      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  GetBuilder<IncrementContrler>(
                      init:IncrementContrler() ,
                      builder: (vlaue)=>Text("${vlaue.counter.value}")
                      // builder: (vlaue)=>Text("${vlaue.counter.value}")
                  ),

                  SizedBox(height: 33,),


                  GetX<IncrementContrler>(
                      init:IncrementContrler() ,
                      builder: (vlaue)=>Text("${
                          vlaue.counter.value}")
                  ),

                  Obx(()=>Text("${inc.counter.value}")),

                  RaisedButton(
                    onPressed: (){
                      inc.increment();
                      // Get.find<IncrementContrler>().increment();
                    },
                    child: Text("iNcrement"),
                  ),


                  GetBuilder<IncrementContrler>(
                    init: IncrementContrler(),
                      builder: (v)=>RaisedButton(
                        onPressed: (){
                          v.increment();
                        },
                        child: Text("iNcrement"),
                      )
                          // Text("${v.increment()}")
                  )


                ],
              ),


            ]
        ),
      ),
    );
  }
}