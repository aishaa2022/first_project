import 'dart:math';

import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  
  
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  
  int w=0;
  int h=0;
  double r=0;
  String? status;
  
  @override
  Widget build(BuildContext context) {
    if(r<16){
     status="Severe Thinness";
    }
    else if(r==16 && r==17){
      status="Moderate Thinness";
    }
    else if(r>17 && r<=18.5){
     status="Mild Thinness";
    }
    else if(r>18.5 && r<=25){
      status="Normal";
    }
    else if(r>25 && r<=30){
      status="Overweight";
    }
    else if(r>30 && r<=35){
      status="Obese Class I";
    }
    else if(r>35 && r<=40){
      status="Obese Class II";
    }
    else if(r>40){
     status="Obese Class III";
    }

    return Scaffold(
      backgroundColor: Color(0xff0a0c21),
      appBar: AppBar(title:
      Text("BMI Calculator App", style: TextStyle(color: Colors.white),), centerTitle: true,
       backgroundColor: Color(0xff0a0c21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children:[
            Row(
              children: [
                Expanded(
                  child: Container( 
                    margin: EdgeInsets.all(8),     
                   height: 280,
                   decoration: BoxDecoration(
                    color: Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(20)
                   ),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("weight",style: TextStyle(fontSize: 30, color: Colors.blueGrey),),
                      SizedBox(height: 10,),
                      Text("$w kg" ,style: TextStyle(fontSize: 25, color: Colors.white),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                        FloatingActionButton(onPressed:(){
                          setState(() {
                            w--;
                          });
                        } ,mini: true,backgroundColor: Colors.blueGrey,child: Icon(Icons.remove)),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                            w++;
                          });
                        },mini: true,backgroundColor: Colors.blueGrey, child: Icon(Icons.add)),
                       ],
                      ),
                    ],
                   ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:EdgeInsets.all(8),
                    height: 280,
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xff1d1e33)) ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("height", style: TextStyle(fontSize: 30,color: Colors.blueGrey),),
                      SizedBox(height: 10,),
                      Text("$h cm", style: TextStyle(fontSize: 25,color: Colors.white),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              h--;
                            });
                          }, mini: true, backgroundColor: Colors.blueGrey,child: Icon(Icons.remove),),
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              h++;
                            });
                          }, mini: true, backgroundColor: Colors.blueGrey,child: Icon(Icons.add),)
          
                      ],),
                    ]),
                  ),
                )
              ],
            ),]),
          ),

        Expanded(
         child: Column(
          children:[
       
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ElevatedButton(onPressed: (){
              setState(() {
                r=(w/pow(h/100, 2)).ceilToDouble();
              });
            }, child: Text("calculate", style: TextStyle(fontSize: 20),),
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xffeb1555),),),
          ),
          SizedBox(height: 50,),
          Text("Result: $r", style: TextStyle(fontSize: 30, color: Colors.white),),
          SizedBox(height: 10,),
          Text("$status",style:TextStyle(fontSize: 20, color: Colors.green) ,
          )
          
          ],
             ),
       ),],),
      
    );
  }
}