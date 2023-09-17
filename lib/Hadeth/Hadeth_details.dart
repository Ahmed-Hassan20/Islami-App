import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Hadeth/hadeth.dart';
import 'package:islamiapp/Hadeth/itemhadethdetails.dart';

import 'package:islamiapp/my_theme.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class hadethdetails extends StatefulWidget {
  static const String routename = 'hadethdetails';

  @override
  State<hadethdetails> createState() => _hadethdetailsState();
}

class _hadethdetailsState extends State<hadethdetails> {


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appConfigProvider>(context);

    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth;

    return Stack(children: [
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
            '${args.title}',
            style: provider.isDarkMode()?Theme
                .of(context)
                .textTheme
                .titleLarge:Theme
                .of(context)
                .textTheme
                .titleLarge!.copyWith(color: mytheme.black)
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery
                  .of(context)
                  .size
                  .width * 0.05,
              vertical: MediaQuery
                  .of(context)
                  .size
                  .height * 0.08),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color:provider.isDarkMode()?mytheme.primarydark:mytheme.white),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return itemhadethdetails(content:args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}