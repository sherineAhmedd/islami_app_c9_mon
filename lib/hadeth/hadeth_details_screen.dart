import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_islamii/hadeth/hadeth_tab.dart';
import 'package:practice_islamii/hadeth/item_hadeth-details.dart';
import 'package:practice_islamii/my-theme.dart';
import 'package:practice_islamii/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import '../quran/item_sure-details.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth-screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<AppConfigProvider>(context);

    return Stack(
      children: [
        provider.isDarkMode()
            ? Image(image: AssetImage('assets/images/background_dark.png'))
            : Image(image: AssetImage('assets/images/homescreen.png')),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title:
                Text(args.title, style: Theme.of(context).textTheme.titleLarge),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.05,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ItemHadethDetails(
                  content: args.content[index],
                );
              },
              itemCount: args.content.length,
            ),
          ),
        ),
      ],
    );
  }
}
