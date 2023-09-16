import 'package:flutter/material.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  Widget build(BuildContext context) {
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
                    children: [
                      Image.asset('assets/images/head_sebha_logo.png'),
                      Image.asset('assets/images/body_sebha_logo.png')
                    ],
                  ),
                ),
              ),
              Text(
                'عدد التسبيحات',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Container(
                width: 60,
                height: 70,
                decoration: BoxDecoration(
                  color: mytheme.primarylight,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    '$counter',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: mytheme.primarylight,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  '  ${Azkar[index]}  ',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(color: mytheme.white),
                ),
              ),
            ]));
  }
}
