import 'package:flutter/material.dart';

class itemhadethdetails extends StatelessWidget {
  String content;

  itemhadethdetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content ,
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
