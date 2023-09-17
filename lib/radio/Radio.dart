import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class radio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {    var provider = Provider.of<appConfigProvider>(context);

  return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/radio_image.png'),
          Text(AppLocalizations.of(context)!.radio,style: Theme.of(context).textTheme.titleMedium,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.skip_previous,size: 40,color: provider.isDarkMode()?mytheme.yellow:mytheme.primarylight,),SizedBox(width: 12,),
              Icon(Icons.play_arrow,size: 60,color: provider.isDarkMode()?mytheme.yellow:mytheme.primarylight,),SizedBox(width: 12,),
              Icon(Icons.skip_next,size: 40,color: provider.isDarkMode()?mytheme.yellow:mytheme.primarylight,)
            ],
          )
        ],
      ),
    );
  }
}