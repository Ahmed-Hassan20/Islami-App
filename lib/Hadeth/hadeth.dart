import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Hadeth/ItemHadethName.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class hadeth extends StatefulWidget {
  @override
  State<hadeth> createState() => _hadethState();
}

class _hadethState extends State<hadeth> {
  List<Hadeth> hadethlist = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appConfigProvider>(context);

    if(hadethlist.isEmpty){loadHadeth();};
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(
          color:provider.isDarkMode()?mytheme.yellow:mytheme.primarylight,
          thickness: 2,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: provider.isDarkMode()? Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.white):Theme.of(context).textTheme.titleSmall!.copyWith(color: mytheme.black),
        ),
        Divider(
          color: provider.isDarkMode()?mytheme.yellow:mytheme.primarylight,
          thickness: 2,
        ),
        hadethlist.isEmpty?Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,)):
        Expanded(
            flex: 2,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: provider.isDarkMode()?mytheme.yellow:mytheme.primarylight,
                  thickness: 1,
                );
              },
              itemBuilder: (context, index) {
                return itemHadethName( hadeth: hadethlist[index],);
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
