import 'package:flutter/material.dart';

class mytheme {
  static Color black = Color(0xff242424);
  static Color primarycolor = Color(0xffB7935F);
  static Color primarydark = Color(0xff141A2E);
  static Color white = Colors.white;
  static Color yellow = Color(0xffFACC1D);
  static ThemeData lighttheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primarycolor,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: black)),
      textTheme: TextTheme(
        titleLarge:
            TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: black),
        titleMedium:
            TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: black),
        titleSmall:
            TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primarycolor,
          selectedItemColor: black,
          selectedIconTheme: IconThemeData(size: 30)));


  static ThemeData darkTheme = ThemeData(
    primaryColor: primarydark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: yellow,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: white,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: white,
      ),
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: yellow,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primarydark,
      selectedItemColor: yellow,
      unselectedItemColor: white,
    ),
  );
}
