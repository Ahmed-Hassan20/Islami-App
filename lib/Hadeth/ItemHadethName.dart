import 'package:flutter/material.dart';
import 'package:islamiapp/Hadeth/Hadeth_details.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'hadeth.dart';



class itemHadethName extends StatelessWidget {
Hadeth hadeth;
  itemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appConfigProvider>(context);

    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(hadethdetails.routename,
              arguments:hadeth );

        },
        child: Text(
          hadeth.title,
          style: provider.isDarkMode()? Theme.of(context).textTheme.titleSmall!.copyWith(color:mytheme.white):Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.black),
          textAlign: TextAlign.center,
        ));
  }
}
