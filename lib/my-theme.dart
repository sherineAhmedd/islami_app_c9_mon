import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xffc59a5c);
  static Color blackColor = Colors.black;
  static Color whiteColor = Colors.white;
  static Color countColor = Color(0xffC59A5C);
  static Color primaryDark = Color(0xff141A2E);
  static Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: blackColor,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: true,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      titleMedium: TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      titleSmall: TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
    ),
  ); //need obj , (static ) to call the class in main

  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: whiteColor,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: true,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      titleMedium: TextStyle(
        color: whiteColor,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      titleSmall: TextStyle(
        color: yellowColor,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    ),
  );
}
