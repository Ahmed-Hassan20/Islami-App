import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/my_theme.dart';
import 'package:islamiapp/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class languagebottomsheet extends StatefulWidget {
  @override
  State<languagebottomsheet> createState() => _languagebottomsheetState();
}

class _languagebottomsheetState extends State<languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child: provider.appLanguage == 'en'
                ? getSelectedItemWidget(AppLocalizations.of(context)!.english)
                : getUnSelectedItemWidget(
                    AppLocalizations.of(context)!.english)),
        InkWell(
          onTap: () {
            provider.changeLanguage('ar');
          },
          child: provider.appLanguage == 'ar'
              ? getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
              : getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic),
        ),
      ],
    );
  }

  Widget getSelectedItemWidget(String text) {
    var provider = Provider.of<appConfigProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: provider.isDarkMode()
                      ? mytheme.primarylight
                      : Theme.of(context).primaryColor,
                ),
          ),
          Icon(
            Icons.check,
            color: provider.isDarkMode()
                ? mytheme.primarylight
                : Theme.of(context).primaryColor,
            size: 30,
          )
        ],
      ),
    );
  }

  Widget getUnSelectedItemWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
