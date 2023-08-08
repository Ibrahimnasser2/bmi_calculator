import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:review/modules/BMI_calculator_app/info.dart';

import '../../../shared/components/components.dart';

class bmi_result extends StatelessWidget{
  late bool gender ;
  late int age;
  late int result;
  bmi_result({required this.age,
    required this.gender,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI result",style: TextStyle(fontSize: 20,color: Colors.white) ,),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            navigate_to(context, info());
          }, icon: Icon(Icons.info_outline_rounded,color: Colors.white,))
        ],

      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text("gender : ${gender?"male":"female"} ",
                style: TextStyle(fontSize: 20,color: Colors.black,
                    fontWeight: FontWeight.bold),),
              Text("result : ${result} ",
                style: TextStyle(fontSize: 20,color: Colors.black,
                    fontWeight: FontWeight.bold),),
              Text("age : ${age} ",
                style: TextStyle(fontSize: 20,color: Colors.black,
                    fontWeight: FontWeight.bold),),
              Spacer(),
              camper()


            ],),
        ),
      ),
    );
  }

}