import 'package:flutter/material.dart';
import 'package:islamiapp/Hadeth/hadeth.dart';
import 'package:islamiapp/quran/Quran.dart';
import 'package:islamiapp/radio/Radio.dart';
import 'package:islamiapp/sebha/Sebha.dart';

import 'bottom_nav_item.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(currentIndex: selectedindex,
                onTap: (index){
              selectedindex=index;
              setState(() {

              });
                }
                ,items: [

              bottom_nav_item(icon:ImageIcon(AssetImage('assets/images/icon_quran.png')) ,label:'Quran' ),
              bottom_nav_item(icon:ImageIcon(AssetImage('assets/images/icon_hadeth.png')) ,label:'Hadeth' ),
              bottom_nav_item(icon:ImageIcon(AssetImage('assets/images/icon_sebha.png')) ,label:'Sebha' ),
              bottom_nav_item(icon:ImageIcon(AssetImage('assets/images/icon_radio.png')) ,label:'Radio' ),

            ]),
          ),
          body: tabs[selectedindex],
        )
      ],
    );
  }
  List<Widget> tabs=[quran(),hadeth(),sebha(),radio()];
}

