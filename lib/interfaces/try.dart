import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'determine_location.dart';
import 'gov_home.dart';




class GovNewAlarmInterface extends StatefulWidget{
@override 
String value2;
GovNewAlarmInterface({this.value2});
State createState()=> GovNewAlarmInterfaceState(value2); 
}
class GovNewAlarmInterfaceState extends State<GovNewAlarmInterface>{
  String value2;
GovNewAlarmInterfaceState(this.value2);
  TextEditingController _alarm = TextEditingController();
  TextEditingController _level = TextEditingController();
   final Color _color = Color(0xFF3CA7A0);
   final int _numPages = 3;
   final PageController _pageController = PageController(initialPage: 0);
   int _currentPage = 0;
  
   List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF3CA7A0),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  Widget build(BuildContext context){
return
Scaffold(

  // Background //
  resizeToAvoidBottomInset: false,
  backgroundColor: Colors.grey,
  appBar: AppBar
  (

    // App Bar //

    backgroundColor: Colors.transparent,
    elevation: 0.0,
    title:Text("New Alarm",textAlign: TextAlign.center,
    style: TextStyle(fontStyle: FontStyle.normal,fontSize: 27.0,color: Colors.white),),
    centerTitle: true,  
    leading: IconButton(
      icon: Icon(Icons.close
      ,size:(25.0),color: Colors.white),
      onPressed: ()
      {
        Navigator.of(context).pop();
        },
    ),    
        ),

        // Slide Show // 

        body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Column(
            children: <Widget>[
               Container(
                  height: 650,
                width: 2000,
                child: PageView(
                  
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(40), 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                                /// Slide One ///
                              
                          // Descriprion Text Field //

                        
                          // Type of Alarm Field // 

                           Padding(
                      padding: EdgeInsets.only(top:25),
                      child: Container(
                        width: 350,
                        height: 40,
                        decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10.0), color: Colors.white54,),
                        child: TextField(
                        controller: _alarm,
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                        ),
                        ),
                      ),
                    ),

                    // Alarm Icons //

                    Padding(
                      padding: EdgeInsets.only(top:25),
                      child: Wrap(
                        children: <Widget>[
                          Padding(
                            padding:  EdgeInsets.only(right:13.0 , bottom: 8),
                            child:GestureDetector(                      
                              child: Image(image: AssetImage('images/Flooding.png')
                              ),
                            onTap: () {_alarm.text="Flooding";} 
                            ),
                          ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.0 , right: 13),
                               child:GestureDetector(
                                 onTap: () {_alarm.text="Accident";}, 
                              child: Container(
                                child: Image(image: AssetImage('images/Accedint.png')
                          ),
                              ),
                               ),
                            ),    
                           Padding(
                             padding:EdgeInsets.only(bottom:13.0),
                             child: GestureDetector(
                                onTap: () {_alarm.text="Traffic Jam";}, 
                             child: Container(
                               child: Image(image: AssetImage('images/Jam.png'),
                               ),
                             ),
                             ),
                           ), 
                            Padding(
                              padding:  EdgeInsets.only(right:13.0),
                              child: GestureDetector(
                                onTap: () {_alarm.text="Fire";}, 
                              child: Container(
                                child: Image(image: AssetImage('images/fire.png'),
                          ),
                              ),
                              ),
                            ),
                               GestureDetector(
                                 onTap: () {_alarm.text="Road Work";}, 
                             child: Container(
                               child: Image(image: AssetImage('images/work.png'),
                          ),
                             ),
                             ),
                           
                        ],
                      ),
                      ),
                        ],
                      ),  
                    ),

                    /// Slide Two ///
                    
                       // Level of Alarm //

                   Padding(
                     padding: EdgeInsets.all(40),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: <Widget>[
                         Padding(
                           padding: EdgeInsets.only(top:70),
                           child: Text("Alarm Level",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 30,
                           ) ,
                           ), 
                         ),
                           Padding(
                      padding: EdgeInsets.only(top:45),
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10.0), color: Colors.transparent,),
                        child: TextField(
                        controller: _level,
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                        ),
                        ),
                      ),
                    ),

                    // Alarms Level //

                         Padding(
                           padding: EdgeInsets.only(top:40),
                           child: ClipRRect(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                           child:  Container(
                             height: 50,
                             width: 150,
	                    child: RaisedButton(
                              color: Colors.red,
	                      child: Text("Very High", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300 , fontSize: 25),),
                              onPressed: (){_level.text="Very High";}
	                    ),
                          ),
                          ),
                         ),
                          Padding(
                           padding: EdgeInsets.only(top:10),
                           child: ClipRRect(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                           child:  Container(
                             height: 50,
                             width: 150,
	                    child: RaisedButton(
                              color: Colors.orange,
	                      child: Text("High", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300 , fontSize: 25),),
                              onPressed: (){_level.text="High";}
	                    ),
                          ),
                          ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top:10),
                           child: ClipRRect(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                           child:  Container(
                             height: 50,
                             width: 150,
	                    child: RaisedButton(
                              color: Colors.yellow,
	                      child: Text("Modrate", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300 , fontSize: 25),),
                              onPressed: (){_level.text="Modrate";}
	                    ),
                          ),
                          ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top:10),
                           child: ClipRRect(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                           child:  Container(
                             height: 50,
                             width: 150,
	                    child: RaisedButton(
                              color: Colors.green,
	                      child: Text("Low", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300 , fontSize: 25),),
                              onPressed: (){_level.text="Low";}
	                    ),
                          ),
                          ),
                         ),
                       ],
                     ),
                   ),

                   /// Slide Three ///

                   // Google Map // 
                     Center(
                       child: RaisedButton(
                         onPressed: (){
                         var route = new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new DetermineLocation(type: _alarm.text, level:_level.text , value3:value2),
                );
                Navigator.of(context).push(route);
                         },
                         child: Text('Determine the Location'),
                         ),      
                     )
                  ],
                ),
                ),
              
                     
                // Page Indictator //
                     
               Padding(
                 padding:  EdgeInsets.only(top:10.0),
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
               ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
            ],
          ),
        ),    
);
  }

}

