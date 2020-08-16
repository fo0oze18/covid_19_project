import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  @override
  State createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
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
          "Sign Up",
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
                            padding:
                                EdgeInsets.only(top: 30, right: 30, left: 30),

                            // Username //

                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "First Name",
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400]),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.people)),
                            ),
                          ),

                          Padding(
                            padding:
                                EdgeInsets.only(top: 30, right: 30, left: 30),

                            // Username //

                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Last Name",
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400]),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.people)),
                            ),
                          ),

                          Padding(
                            padding:
                                EdgeInsets.only(top: 30, right: 30, left: 30),

                            // Username //

                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "National ID",
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400]),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.people)),
                            ),
                          ),
                        ]),
                  ),
                  // Level of Alarm //

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(top: 30, right: 30, left: 30),

                          // Username //

                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Phone Number",
                                labelStyle: TextStyle(color: Colors.grey[400]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: Icon(Icons.people)),
                          ),
                        ),

                        Padding(
                          padding:
                              EdgeInsets.only(top: 30, right: 30, left: 30),

                          // Username //

                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "E-mail",
                                labelStyle: TextStyle(color: Colors.grey[400]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: Icon(Icons.people)),
                          ),
                        ),

                        // Alarms Level //

                        Padding(
                          padding:
                              EdgeInsets.only(top: 30, right: 30, left: 30),

                          // Username //

                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Home Location",
                                labelStyle: TextStyle(color: Colors.grey[400]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: Icon(Icons.people)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(top: 30, right: 30, left: 30),

                          // Username //

                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Birth Date",
                                labelStyle: TextStyle(color: Colors.grey[400]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: Icon(Icons.people)),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 30, right: 30, left: 30),

                          // Username //

                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Nationalitiy",
                                labelStyle: TextStyle(color: Colors.grey[400]),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: Icon(Icons.people)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
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
                : Text(''),
          ],
        ),
      ),
    );
  }
}
