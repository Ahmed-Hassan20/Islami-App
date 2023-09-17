import 'package:flutter/material.dart';
import 'package:islamiapp/Hadeth/hadeth.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:islamiapp/quran/Quran.dart';
import 'package:islamiapp/radio/Radio.dart';
import 'package:islamiapp/sebha/Sebha.dart';
import 'package:islamiapp/settings/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'bottom_nav_item.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appConfigProvider>(context);

    return Stack(
      children: [
        provider.isDarkMode()?Image.asset(
          'assets/images/dark_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ):
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
                currentIndex: selectedindex,
                onTap: (index) {
                  selectedindex = index;
                  setState(() {});
                },
                items: [
                  bottom_nav_item(
                      icon:
                          ImageIcon(AssetImage('assets/images/icon_quran.png')),
                      label: AppLocalizations.of(context)!.quran),
                  bottom_nav_item(
                      icon: ImageIcon(
                          AssetImage('assets/images/icon_hadeth.png')),
                      label: AppLocalizations.of(context)!.hadeth),
                  bottom_nav_item(
                      icon:
                          ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                      label: AppLocalizations.of(context)!.sebha),
                  bottom_nav_item(
                      icon:
                          ImageIcon(AssetImage('assets/images/icon_radio.png')),
                      label: AppLocalizations.of(context)!.hadeth),
                  bottom_nav_item(
                      icon: Icon(Icons.settings), label: AppLocalizations.of(context)!.settings),
                ]),
          ),
          body: tabs[selectedindex],
        )
      ],
    );
  }

  List<Widget> tabs = [quran(), hadeth(), sebha(), radio(),settings()];
}
