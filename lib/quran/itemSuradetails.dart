import 'package:flutter/material.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class itemSuradetails extends StatelessWidget {
  String content;
  int index;
  itemSuradetails({required this.content,required this.index});

  @override
  Widget build(BuildContext context) {    var provider = Provider.of<appConfigProvider>(context);

  return Text(
      '$content (${index+1})',
      style: provider.isDarkMode()? Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.white):Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.black),
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
