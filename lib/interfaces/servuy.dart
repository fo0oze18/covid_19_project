import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class Servuy extends StatefulWidget {
  @override
  State createState() => ServuyState();
}

class ServuyState extends State<Servuy> {
  final Color _color = Color(0xFF3CA7A0);
  final int _numPages = 6;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<String> lst = ['Fawaz', 'Majed', 'Fahad'];
  int selectedIndex = 0;

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
        color: isActive ? Color(0xFF3CA7A0) : Colors.blueGrey[300],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // Background //
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        // App Bar //

        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Quick Servuy",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontStyle: FontStyle.normal, fontSize: 27.0, color: _color),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.close, size: (25.0), color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),

      // Slide Show //

      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                height: 190,
                width: 190,
                child: Image.asset('images/Group 63.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 400,
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
                    padding: EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          /// Slide One ///

                          // Descriprion Text Field //

                          // Type of Alarm Field //
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Q1 : What is your name?',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 75, top: 30),

                              // Username //

                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: customRadio(lst[0], 0),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: customRadio(lst[1], 1),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: customRadio(lst[2], 2),
                                    ),
                                  ])),
                        ]),
                  ),
                  // Level of Alarm //

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Q2 : What is your name?',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 75, top: 30),

                            // Username //

                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[0], 0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[1], 1),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[2], 2),
                                  ),
                                ])),
                        // Alarms Level //
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Q3 : What is your name?',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 75, top: 30),

                            // Username //

                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[0], 0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[1], 1),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[2], 2),
                                  ),
                                ])),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Q4 : What is your name?',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 75, top: 30),

                            // Username //

                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[0], 0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[1], 1),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[2], 2),
                                  ),
                                ])),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Q5 : What is your name?',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 75, top: 30),

                            // Username //

                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[0], 0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[1], 1),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[2], 2),
                                  ),
                                ])),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'Q6 : What is your name?',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 75, top: 30),

                            // Username //

                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[0], 0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[1], 1),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: customRadio(lst[2], 2),
                                  ),
                                ])),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
            ),
            _currentPage != _numPages - 1
                ? Expanded(
                    child: Align(
                      alignment: FractionalOffset.topRight,
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
                                color: _color,
                                fontSize: 22.0,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Icon(
                              Icons.arrow_forward,
                              color: _color,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(top: 35.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        height: 50,
                        width: 200,
                        child: RaisedButton(
                          color: _color,
                          onPressed: () {},
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget customRadio(String txt, int index) {
    return OutlineButton(
      onPressed: () => changeIndex(index),
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      borderSide: BorderSide(
          color: selectedIndex == index ? Color(0xFF3CA7A0) : Colors.grey),
      child: Text(
        txt,
        style: TextStyle(
            fontSize: 20,
            color: selectedIndex == index ? Color(0xFF3CA7A0) : Colors.grey),
      ),
    );
  }
}
