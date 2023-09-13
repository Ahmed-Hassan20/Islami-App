import 'package:flutter/material.dart';

class mytheme {
  static Color black = Color(0xff242424);
  static Color primaryColor = Color(0xffB7935F);
  static Color white = Colors.white;
  static ThemeData lighttheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryColor,

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
}
