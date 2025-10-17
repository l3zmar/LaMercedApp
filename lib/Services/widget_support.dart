import 'package:flutter/material.dart';

class Appwidget{
  static TextStyle whitetextstyle(double size){
    return TextStyle(
    color: const Color.fromARGB(255, 248, 248, 248), 
    fontSize: size, 
    fontWeight: FontWeight.w500
    );
  }
   static TextStyle headlinetextstyle(double size){
    return TextStyle(
    color: Colors.black,
    fontSize: size, 
    fontWeight: FontWeight.bold
    );
  }
}