import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:review/modules/BMI_calculator_app/BMI_result/Bmi_result.dart';


class bmi extends StatefulWidget{
  @override
  _bmi createState() => _bmi();


}

class _bmi extends State<bmi> {

double h=180;
int age=28;
int weight=60;
bool ismale =true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",style: TextStyle(fontSize: 20,color: Colors.white) ,),
        backgroundColor: Colors.black,
        centerTitle: true,

      ),
      body:  Column(
        children: [
          Expanded(
              child: Container(
                color: Colors.black, 
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(children: [
                    Expanded(
                      child: GestureDetector(

                          child: Container(
                            child: Column( mainAxisAlignment: MainAxisAlignment.center ,
                              children: [
                              Icon(Icons.male,size: 100, color: Colors.white,),
                                Text("male",style: TextStyle(fontSize: 20,color: Colors.white) ,),
                            ],
                            ),decoration: BoxDecoration(
                            color: ismale?Colors.red:Colors.grey[900],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          ),

                        onTap: () {
                          setState(() {
                            ismale=true;
                          });                     },
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            ismale=false;
                          });
                        },

                          child: Container(
                            child: Column( mainAxisAlignment: MainAxisAlignment.center ,
                              children: [
                                Icon(Icons.female,size: 100, color: Colors.white,),
                                Text("female",style: TextStyle(fontSize: 20,color: Colors.white) ,),
                              ],
                            ),decoration: BoxDecoration(
                              color: ismale?Colors.grey[900]:Colors.red,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          ),
                        ),
                      ),



                  ],
                  ),
                ),)),
          Expanded(
              child: Container(
                color: Colors.black,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        child: Column( mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            Text("height",style: TextStyle(fontSize: 20,color: Colors.white) ,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center ,
                              crossAxisAlignment: CrossAxisAlignment.baseline ,
                              textBaseline: TextBaseline.alphabetic ,

                              children: [
                              Text("${h.round()}",style: TextStyle(fontSize: 30,color: Colors.white) ,),
                              Text("cm",style: TextStyle(fontSize: 15,color: Colors.white) ,),
                              ],),
                            Slider(value: h,
                              max: 220,
                              min: 80,
                                onChanged: (value){
                              setState(() {
                                h=value;
                              });
                                },

                                )

                          ],
                        ),decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      ),
                    ),



                  ],
                  ),
                ),)),
          Expanded(
              child: Container(
                color: Colors.black,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        child: Column( mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            Text("weight",style: TextStyle(fontSize: 20,color: Colors.white) ,),
                            Text("${weight}",style: TextStyle(fontSize: 30,color: Colors.white) ,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(

                                  decoration: BoxDecoration(shape: BoxShape.circle,
                                    color: Colors.grey[700]
                                  ),
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Text("-",style: TextStyle(fontSize: 30,color: Colors.white) ,),),

                                ),
                              Container(
                                decoration: BoxDecoration(shape: BoxShape.circle,
                                    color: Colors.grey[700]
                                ),
                                child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Text("+",style: TextStyle(fontSize: 30,color: Colors.white) ,),),
                              ),

                            ],)
                          ],
                        ),decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: Column( mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            Text("age",style: TextStyle(fontSize: 20,color: Colors.white) ,),
                            Text("${age}",style: TextStyle(fontSize: 30,color: Colors.white) ,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(

                                  decoration: BoxDecoration(shape: BoxShape.circle,
                                      color: Colors.grey[700]
                                  ),
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: Text("-",style: TextStyle(fontSize: 30,color: Colors.white) ,),),

                                ),
                                Container(
                                  decoration: BoxDecoration(shape: BoxShape.circle,
                                      color: Colors.grey[700]
                                  ),
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Text("+",style: TextStyle(fontSize: 30,color: Colors.white) ,),),
                                ),

                              ],)
                          ],
                        ),decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      ),
                    ),


                  ],
                  ),
                ),)),
          Container(
            color: Colors.red[800],
              width: double.infinity,
              height: 50,
              child: MaterialButton(onPressed: (){
                int result = (weight/pow(h/100,2)).round();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>bmi_result(age: age, gender: ismale, result: result)

                ));
              },
                child: Text("calculate",style: TextStyle(fontSize: 20,color: Colors.white),),))
        

      ],)



    );
  }}