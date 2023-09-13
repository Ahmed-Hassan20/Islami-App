import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Hadeth/ItemHadethName.dart';

class hadeth extends StatefulWidget {
  @override
  State<hadeth> createState() => _hadethState();
}

class _hadethState extends State<hadeth> {
  List<Hadeth> hadethlist = [];

  @override
  Widget build(BuildContext context) {
    if(hadethlist.isEmpty){loadHadeth();};
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset('assets/images/qur2an_screen_logo.png')),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Text(
          'Hadeth Name',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        hadethlist.isEmpty?Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,)):
        Expanded(
            flex: 2,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 1,
                );
              },
              itemBuilder: (context, index) {
                return itemHadethName(hadeth: hadethlist[index],);
              },
              itemCount: hadethlist.length,
            ))
      ],
    );
  }

  void loadHadeth() async {
    String hadethcontent = await rootBundle.loadString('assets/ahadeth.txt');
    List<String> ahadethlist = hadethcontent.split('#\r\n');
    for (int i = 0; i < ahadethlist.length; i++) {
      List<String> hadethlines = ahadethlist[i].split('\n');
      String title = hadethlines[0];
      hadethlines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethlines);
      hadethlist.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;
  Hadeth({required this.title, required this.content});
}
