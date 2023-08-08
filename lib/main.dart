import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:review/modules/BMI_calculator_app/Bmi/BMI_Calculator.dart';

import 'package:review/shared/bloc_observer.dart';
import 'package:review/shared/network/local/cach_helper.dart';
import 'package:review/shared/network/remote/dio_helper.dart';


void main() {

  runApp(MyApp( ));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {



       return MaterialApp(
         debugShowCheckedModeBanner: false,

         home: Directionality(
             textDirection:TextDirection.ltr ,
             child: bmi()),
       );



  }

}



