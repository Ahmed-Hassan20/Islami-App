import 'package:flutter/material.dart';
import 'package:islamiapp/Hadeth/Hadeth_details.dart';

import '../quran/SuraVerses.dart';
import 'hadeth.dart';



class itemHadethName extends StatelessWidget {
Hadeth hadeth;
  itemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(hadethdetails.routename,
              arguments:hadeth );

        },
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ));
  }
}
