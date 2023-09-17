import 'package:flutter/material.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class itemhadethdetails extends StatelessWidget {
  String content;

  itemhadethdetails({required this.content});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appConfigProvider>(context);

    return Text(
      content ,
      style:  provider.isDarkMode()? Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.yellow):Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.black),
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
