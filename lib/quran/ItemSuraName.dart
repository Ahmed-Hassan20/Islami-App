import 'package:flutter/material.dart';

import 'SuraVerses.dart';


class itemSuraName extends StatelessWidget {
  String name;
  int index;
  itemSuraName({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(verses.routename,arguments:versesArgs(name: name, index: index) );

        },
        child: Text(
          name,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ));
  }
}
