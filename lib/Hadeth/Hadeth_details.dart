import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Hadeth/hadeth.dart';
import 'package:islamiapp/Hadeth/itemhadethdetails.dart';

import 'package:islamiapp/my_theme.dart';

class hadethdetails extends StatefulWidget {
  static const String routename = 'hadethdetails';

  @override
  State<hadethdetails> createState() => _hadethdetailsState();
}

class _hadethdetailsState extends State<hadethdetails> {


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth;

    return Stack(children: [
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
            style: Theme
                .of(context)
                .textTheme
                .titleLarge,
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
              color: mytheme.white),
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