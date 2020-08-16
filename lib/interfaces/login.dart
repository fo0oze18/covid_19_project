import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class LoginInterface extends StatefulWidget{
@override 

State createState()=> LoginInterfaceState(); 
}
class LoginInterfaceState extends State<LoginInterface>{
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  final Color login_color = Color(0xFF3CA7A0);
  String value;
  Widget build(BuildContext context){
return
Scaffold(

  /// Background Decoration ///

      body: SingleChildScrollView(
      	child: Container(
	        child: Column(
	          children: <Widget>[
	            Container(
                child: Image.asset('images/Group 63.png'),
              ), 

              /// Text Fields ///
                 
	                   Padding(
	                     padding: EdgeInsets.only(top:20.0),
	                     child: Column(
	                        children: <Widget>[
                         Padding(padding: EdgeInsets.only(top: 30, right: 30, left:30),
       
                         // Username //

	                           child: TextField(
                               onChanged: (text){
                                 value = text;
                                  },
                             controller: _nameController,
	                              decoration: InputDecoration(
	                               labelText: "Username",
	                               labelStyle: TextStyle(color: Colors.grey[400]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: Icon(Icons.people)
	                              ),
	                            ),
                            ),

                            // Password //

                             Padding(padding: EdgeInsets.only(top: 20, right: 30, left:30),
	                           child: TextField(
                             controller: _passController,
                              obscureText: true,
	                              decoration: InputDecoration(
                                
	                                labelText: "Password",
	                                labelStyle: TextStyle(color: Colors.grey[400]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  
                                ),
                                prefixIcon: Icon(Icons.lock)
	                              ),
	                            ),
                             ),
	                        ],
	                      ),
	                   ),

                      /// Forgot Password? ///
                       
                      Padding (
                        padding: EdgeInsets.only(top:20),
                        
                          child:Text("Forgot Password?", style: TextStyle(color: login_color),),
                      ),

                      /// Login Password ///
                      
                      Padding(
                      padding: EdgeInsets.only(top: 10),
                     child: ClipRRect(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     child:  Container(
                       height: 50,
                       width: 350,
	                    child: RaisedButton(
                        color: login_color,
	                      child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300 , fontSize: 25),),
                        onPressed: (){},
	                    ),
                    ),
                    ),
                       ),   
                   
                   /// Sign Up & As Guest Buttons ///
                    
          Padding(
            padding: EdgeInsets.only(top:170.0),
            child: Wrap(
              direction: Axis.horizontal,
              children: <Widget>[

                // Sign Up Button //
                
                 Padding(
                          padding: EdgeInsets.only(left: 25, right: 20),
                         child:  ClipRRect(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                       child:  Container(
                         height: 50,
                         width: 150,
	                    child: RaisedButton(
                          color: login_color,
	                      child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300 , fontSize: 15),),
                          onPressed: ()
                          {},
	                    ),
                      ),
                      ),
                        ),

                        // As Guest Button //

                        Padding(
                          padding: EdgeInsets.only(right: 25 ),
                          child: ClipRRect(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                       child:  Container(
                         height: 50,
                         width: 150,
	                    child: RaisedButton(
                          color: login_color,
	                      child: Text("As Guest", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300 , fontSize: 15),),
                          onPressed: (){
                            showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("As Guest"),
          content: new Text("If you continue as guest, you can't use all privileges of LBN App"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Contunie" , style: TextStyle( color: login_color)),
              onPressed: () {
                //Navigator.of(context).pop();
               },
            ),
            new FlatButton(
              child: Text("Close" , style: TextStyle( color: login_color)),
              onPressed: (){
                Navigator.of(context).pop();
              }  
              ), 
          ],
        );
      },
                            );
                          },
	                    ),
                      ),
                      ),
                        )   
              ],
            ),
          ),           
                    ],
                  ), 
            ),      
      ),        
      );
  }
}