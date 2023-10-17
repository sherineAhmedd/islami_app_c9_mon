import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_islamii/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'item_sure-details.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'details-screen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Stack(
      children: [
        provider.isDarkMode()
            ? Image(image: AssetImage('assets/images/background_dark.png'))
            : Image(image: AssetImage('assets/images/homescreen.png')),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('${args.name}',
                style: Theme.of(context).textTheme.titleLarge),
          ),
          body: verses.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.05,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ItemSuraDetails(
                        content: verses[index],
                        index: index,
                      );
                    },
                    itemCount: verses.length,
                  ),
                ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    print(lines);
    setState(() {});
  }
}

/// data class
class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
