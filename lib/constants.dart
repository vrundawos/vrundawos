import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFff8201);

class Constants {

  static double bigTextSize;
  static double titleTextSize;
  static double subtitleTextSize;
  static double detailTextSize;
  static double subDetailTextSize;

  static Color blackText = Color(0xff000000);
  static Color whiteColor = Color(0xFFFFFFFF);
  static Color orangeColor = Color(0xFFff8201);
  static Color grayText = Color(0x80000000);
  static Color lightGrayText = Color(0xFFeaebef);
  static Color textFieldBgColor = Color(0xFFfbfbfb);

  static ThemeData theme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: primaryColor,
    accentColor: Color(0xffffffff),
    // Define the default font family.
    fontFamily: 'Regular',
    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500,color: whiteColor, fontFamily: 'Bold'),

      //BottomBar font style
      headline2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700,color: orangeColor, fontFamily: 'Medium'),
      headline3: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500,color: grayText, fontFamily: 'Medium'),

      //Tabbar font style
      headline4: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700,color: whiteColor, fontFamily: 'Bold'),
      headline5: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700,color: grayText, fontFamily: 'Regular'),

      //Hint text
      headline6: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: grayText, fontFamily: 'Regular'),

      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Regular'),
    ),
  );
}