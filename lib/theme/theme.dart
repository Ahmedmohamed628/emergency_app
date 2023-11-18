import 'package:flutter/material.dart';

class MyTheme {
  // all colors we need for the app
  static Color redColor = Color(0xFFa00c0e);
  static Color whiteColor = Color(0xffffffff);
  static Color blackColor = Color(0xff000000);
  static Color grayColor = Color(0xff562929);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: whiteColor,
    appBarTheme: AppBarTheme(backgroundColor: redColor, elevation: 0),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: whiteColor),
      titleMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: blackColor),
      titleSmall: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: grayColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedItemColor: whiteColor,
      unselectedItemColor: grayColor,
      backgroundColor: redColor,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: redColor,
        shape: StadiumBorder(side: BorderSide(color: whiteColor, width: 4))),
  );
}
