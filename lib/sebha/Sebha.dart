import 'package:flutter/material.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  List<String> Azkar = [
    'سبحان الله',
    "الحمدلله",
    "لا إله إلا الله",
    "الله أكبر",
    "لا حول ولا قوة إلا بالله"
  ];

  int index = 0;

  int counter = 0;

  double turns = 0.0;

  @override
  Widget build(BuildContext context) { var provider = Provider.of<appConfigProvider>(context);
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedRotation(
                turns: turns,
                duration: Duration(milliseconds: 250),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      turns += 1 / 33;
                      counter++;
                      if (counter % 33 == 0) {
                        counter=0;
                        index++;
                        if (index == 5) {
                          index = 0;
                        }
                        Azkar[index];
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [provider.isDarkMode()?Image.asset('assets/images/head_sebha_dark.png'):
                      Image.asset('assets/images/head_sebha_logo.png'),
                      provider.isDarkMode()?
                      Image.asset('assets/images/body_sebha_dark.png'):Image.asset('assets/images/body_sebha_logo.png')
                    ],
                  ),
                ),
              ),
              Text(
                AppLocalizations.of(context)!.azkar,
                style:  provider.isDarkMode()? Theme.of(context).textTheme.titleMedium!.copyWith(color: mytheme.white):Theme.of(context).textTheme.titleMedium!.copyWith(color: mytheme.black),
              ),
              Container(
                width: 60,
                height: 70,
                decoration: BoxDecoration(
                  color: provider.isDarkMode()?mytheme.primarydark:mytheme.primarycolor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    '$counter',
                    style: provider.isDarkMode()? Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.white):Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.black),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: provider.isDarkMode()?mytheme.yellow:mytheme.primarycolor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  '  ${Azkar[index]}  ',
                  style: provider.isDarkMode()? Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.black):Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.white),
                ),
              ),
            ]));
  }
}
