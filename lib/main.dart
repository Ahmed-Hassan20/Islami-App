
import 'package:flutter/material.dart';
import 'package:islamiapp/Hadeth/Hadeth_details.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'my_theme.dart';
import 'package:islamiapp/quran/SuraVerses.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(ChangeNotifierProvider(create: (context)=>appConfigProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename : (context)=> HomeScreen(),
        verses.routename:(context)=> verses(),
        hadethdetails.routename:(context)=> hadethdetails()

      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme:mytheme.lighttheme ,
      locale: Locale(provider.appLanguage),


    );
  }
}