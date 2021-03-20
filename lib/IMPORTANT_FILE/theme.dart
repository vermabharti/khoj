import 'package:flutter/material.dart';

final panelTheme = ThemeData(
  // Define the default Brightness and Colors
  brightness: Brightness.light,
  primaryColor: Colors.lightBlue[800],
  accentColor: Colors.cyan[600], 
  fontFamily: 'Nobel Regular', 
  textTheme: TextTheme(
    //headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    title: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w700, color:Color(0xFF605a56)),
    body1: TextStyle(fontSize: 35.0, color:Color(0xFF909090)),
    body2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color:Color(0xFF605a56)),
    subtitle: TextStyle(fontSize:17.0, fontWeight: FontWeight.w400, color:Color(0xFF605a56)),
    subhead: TextStyle(fontSize:17.0, fontWeight: FontWeight.w400, color:Color(0xFF909090)),
    button: TextStyle(fontSize:15.0, fontWeight:FontWeight.w400,),
  ),
  buttonTheme: ButtonThemeData(
    minWidth: 60,
    height: 35,
    shape: CircleBorder(),     
    textTheme: ButtonTextTheme.normal,
    colorScheme: ColorScheme.light(
      primary: Color(0xFFffb600),
    ),
  ),
    
);