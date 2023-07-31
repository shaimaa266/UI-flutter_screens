import 'dart:math';

import 'package:flutter/material.dart';

import 'package:projectiti/navclass.dart';

class Calculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
return calculator_state();
  }

}
class calculator_state  extends State{
  double slidervalue=170;
  int wieght=60;
  int age=25;
  bool is_male=true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        is_male=true;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
width: 150,
                       decoration: BoxDecoration( color:is_male ?Colors.blue :Colors.grey,
                           borderRadius: BorderRadius.circular(24)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                    Icon(Icons.male,size: 80,),
                           Text('Male',style: TextStyle(fontSize: 40),)
                         ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 25,),
                  InkWell(
                    onTap: (){
                      is_male=! is_male;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        decoration: BoxDecoration(color:is_male ? Colors.grey:Colors.cyan,
                            borderRadius: BorderRadius.circular(24)),
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.female,size: 80,),

                              Text('Female',style: TextStyle(fontSize: 40),)
                            ],
                          ),
                        )

                      ),
                    ),
                  )


                ],
              ),
            ),
          ),
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(32)),
                child: Column(
          children: [
                Text('Height',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('${slidervalue.round()}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                    Text('CM',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  ],
                ),
                Slider(value: slidervalue, onChanged: (value){
                  setState(() {
                    slidervalue=value;
                    print(slidervalue.round());
                  });

                },max: 220,min:80,)
          ],
                ),
              ),
            ),
          ),



          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white60),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.black38,borderRadius: BorderRadius.circular(22)),
                          child: Column(

                            children: [
                              Text('Wieght',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                              Text('$wieght',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      wieght++;
                                      print("$age");

                                    });
                                  },mini:  true,child: Icon(Icons.add),),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      wieght--;
                                      print("$age");

                                    });
                                  },mini:  true,child: Icon(Icons.remove),),

                                ],
                              )



                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.black38,borderRadius: BorderRadius.circular(22)),

                          child: Column(
                            children: [
                              Text('Age',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                              Text('$age',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {

                                      setState(() {
                                        age++;
                                        print("$age");

                                      });
                                    });
                                  },mini:  true,child: Icon(Icons.add),),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age--;
                                      print("$age");

                                    });
                                  },mini:  true,child: Icon(Icons.remove),),

                                ],
                              )


                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.teal,
            width: double.infinity,
            child: MaterialButton(onPressed: (){
              var result=wieght/ pow(slidervalue/100,2);
              print('${result.round()}');
              Navigator.push(context, MaterialPageRoute(builder: (context)=>navclass(age: age,is_male: is_male,result: result,)),
              );},child: Text('Calculate'),),
          ),


        ],

      ),
    );
  }

}