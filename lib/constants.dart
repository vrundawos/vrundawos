import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFE18D01);
class Constants {
  
  static ThemeData theme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: primaryColor,
    accentColor: Color(0xffffffff),
    // Define the default font family.
    fontFamily: 'Georgia',
    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}
