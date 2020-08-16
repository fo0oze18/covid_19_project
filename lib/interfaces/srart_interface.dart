import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';


class StartInterface extends StatefulWidget{
@override 
State createState()=> StartInterfaceState();    
}
class StartInterfaceState extends State<StartInterface>{
  final Color getStart_color = Color(0xFF3CA7A0); // Color // 
  Widget build(BuildContext context){
return Scaffold(
   /// Background ///
  backgroundColor: Colors.white,
body:SingleChildScrollView(
  child: Column(
    children: <Widget>[
  Padding(
    padding: EdgeInsets.only(top:30.0),
    child: Container(
	              height: 320,
                  child: Image.asset('images/1      123px-Saudi_Ministry_of_Health_Logo.svg.png'),
    ),
  ),
    
           /// Photo Decoration ///
           Padding(padding:  EdgeInsets.only(top: 60),
           child: Text('حاذر', style: TextStyle(fontSize: 25 , color: getStart_color ),),
           ),
           Padding(padding:  EdgeInsets.only(top: 20),
           child: Text('COVID 19', style: TextStyle(fontSize: 25 , color: getStart_color ),),
           ),
   
          Padding (
            padding : EdgeInsets.only(top: 60),
             child: Container(
               child: Image.asset('images/Group 63.png')     
            ),
      ),
            /// Copyright Sentence ///
            
            Padding(
              padding: EdgeInsets.only(top:80), 
               child:Container(
              child: Text('Copyright.LBN@2019',
                  style: TextStyle(fontSize: 10),)
            ),
            ),   
        ],      
  ),
),

);
  }
}