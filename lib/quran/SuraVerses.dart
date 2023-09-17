import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'itemSuradetails.dart';
import 'package:islamiapp/my_theme.dart';

class verses extends StatefulWidget {
  static const String routename = 'SuraVerses';

  @override
  State<verses> createState() => _versesState();
}

class _versesState extends State<verses> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appConfigProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as versesArgs;
    if (verse.isEmpty) {
      loadfile(args.index);
    }
    return Stack(children: [
      provider.isDarkMode()?Image.asset(
        'assets/images/dark_bg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ):
      Image.asset(
        'assets/images/default_bg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: verse.length == 0
            ? Center(child: CircularProgressIndicator())
            : Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.08),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: provider.isDarkMode()?mytheme.primarydark:mytheme.white),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 1,
                    );
                  },
                  itemBuilder: (context, index) {
                    return itemSuradetails(
                      content: verse[index],
                      index: index,
                    );
                  },
                  itemCount: verse.length,
                ),
              ),
      )
    ]);
  }

  void loadfile(int index) async {
    String verses = await rootBundle.loadString('assets/text/${index + 1}.txt');
    List<String> lines = verses.split('\n');
    verse = lines;
    setState(() {});
  }
}

class versesArgs {
  String name;
  int index;
  versesArgs({required this.name, required this.index});
}
