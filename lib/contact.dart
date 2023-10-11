import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
   Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        title: Text("contact me"),
        actions: [
          Icon(Icons.settings)
        ],
      ),
      body: 
      Column(
        children: [
          SizedBox(height: 40,),

         CircleAvatar(backgroundImage: AssetImage("asset/photo.jpg"),
         radius: 50,),
         Text("Aisha Ahmed Fathy",style: TextStyle(fontSize: 20, color: Colors.white),),
         Text("Flutter Developer", style: TextStyle(fontSize: 17, color: Colors.white70) ,),
         SizedBox(height: 10,),

         Divider(thickness: 1.5,indent: 90, endIndent: 90,),
         SizedBox(height: 30,),
         Container(
          padding: EdgeInsets.all(15),
          width: 350,
          height: 60,
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Icon(Icons.phone, color: Colors.blueGrey, size: 30,),
              SizedBox(width: 30,),
              Text("01020257223", style: TextStyle(fontSize: 22),)
            ],
          ),
         ),
          SizedBox(height: 20,),

         Container(
          padding: EdgeInsets.all(15),
          width: 350,
          height: 60,
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Icon(Icons.email, color: Colors.blueGrey, size: 30,),
              SizedBox(width: 20,),
              Text("aisha74ahmed@gmail.com", style: TextStyle(fontSize: 20),)
            ],
          ),
         ),
         SizedBox(height: 20,),
         Container(
          padding: EdgeInsets.all(15),
          width: 350,
          height: 60,
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Icon(Icons.facebook, color: Colors.blueGrey, size: 30,),
              SizedBox(width: 30,),
              Text("Aisha Ahmed", style: TextStyle(fontSize: 22),)
            ],
          ),
         ),
         



        ],
      
      ),
    );
  }
}