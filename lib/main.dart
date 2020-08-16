import 'package:covid_19_project/interfaces/servuy.dart';
import 'package:flutter/material.dart';
import 'interfaces/sign_up.dart';
import 'interfaces/srart_interface.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Hather",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3CA7A0),
      ),
      home: new Servuy(),
    ),
  );
}
