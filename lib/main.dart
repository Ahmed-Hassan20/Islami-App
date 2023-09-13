import 'package:flutter/material.dart';
import 'package:islamiapp/Hadeth/Hadeth_details.dart';
import 'home_screen.dart';
import 'my_theme.dart';
import 'package:islamiapp/quran/SuraVerses.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename : (context)=> HomeScreen(),
        verses.routename:(context)=> verses(),
        hadethdetails.routename:(context)=> hadethdetails()

      },
      theme:mytheme.lighttheme ,

    );
  }
}