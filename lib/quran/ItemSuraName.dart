import 'package:flutter/material.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import 'SuraVerses.dart';


class itemSuraName extends StatelessWidget {
  String name;
  int index;
  itemSuraName({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appConfigProvider>(context);

    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(verses.routename,arguments:versesArgs(name: name, index: index) );

        },
        child: Text(
          name,
          style:provider.isDarkMode()? Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.white):Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.black),
          textAlign: TextAlign.center,
        ));
  }
}
