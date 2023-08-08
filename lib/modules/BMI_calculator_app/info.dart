


import 'package:flutter/material.dart';

class info extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI result",style: TextStyle(fontSize: 20,color: Colors.white) ,),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.info_outline_rounded,color: Colors.white,))
        ],

      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/banner-image-bmi.jpg")




            ],),
        ),
      ),
    );
  }
}
