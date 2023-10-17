import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:practice_islamii/home_screen.dart';
import 'package:practice_islamii/providers/app_config_provider.dart';

import 'package:practice_islamii/quran/sura_details.dart';

import 'hadeth/hadeth_details_screen.dart';
import 'my-theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: ((context) => AppConfigProvider()), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeSreen.routeName,
      routes: {
        HomeSreen.routeName: (context) => HomeSreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: provider.appTheme,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
