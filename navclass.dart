import 'package:flutter/material.dart';

class navclass extends StatelessWidget{
   final bool is_male;

   final double result;
   final int age;
  navclass({required this.age,required this.is_male,required this.result});
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text('Info Page'),
  ),
  body:
  Center(
    child: Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" Gender:${is_male ? 'male ':'female'} ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
            Text(" Result: ${result.round()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
            Text(" age: $age",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
          ],
        ),
    ),
  ),

);
  }

}