
import 'package:first_project/bmi.dart';
import 'package:first_project/contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatefulWidget {
   FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMI()
     
      
    );
  }
}