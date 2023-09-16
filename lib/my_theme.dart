import 'package:flutter/material.dart';

class mytheme {
  static Color black = Color(0xff242424);
  static Color primarylight = Color(0xffB7935F);
  static Color primarydark = Color(0xff141A2E);
  static Color white = Colors.white;
  static Color yellow = Color(0xffFACC1D);
  static ThemeData lighttheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primarylight,

      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent, elevation: 0,centerTitle: true,iconTheme: IconThemeData(color: black)),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color:black),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color:black),
        titleSmall: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color:black),
      ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: black,
        selectedIconTheme: IconThemeData(size: 30 )
    )


  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primarydark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: white,
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
      backgroundColor: primarylight,
      selectedItemColor: yellow,
      unselectedItemColor: white,
    ),
  );
}

