import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_islamii/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import '../my-theme.dart';

class SebhaTab extends StatefulWidget {
  List<String> namesList = ['سبحان لله', 'الله اكبر', 'الحمد لله'];

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              // Transform.rotate(
              // angle: rotation,
              // child: IconButton(
              // onPressed: OnClick,
              //icon:  Image.asset('assets/images/body_of_seb7a.png'),

              InkWell(
                onTap: () {
                  OnClick();
                },
                child: Container(
                  margin: EdgeInsets.only(left: 99),
                  child: provider.isDarkMode()
                      ? Image(
                          image: AssetImage(
                              'assets/images/dark_head_of_seb7a.png'))
                      : Image(
                          image: AssetImage('assets/images/head_of_seb7a.png')),
                ),
              ),
              InkWell(
                onTap: () {
                  OnClick();
                },
                child: Container(
                  margin: EdgeInsets.only(top: 80),
                  child: provider.isDarkMode()
                      ? Image(
                          image: AssetImage(
                              'assets/images/dark_body_of_seb7a.png'))
                      : Image(
                          image: AssetImage('assets/images/body_of_seb7a.png')),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'عددالتسبيحات',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 30,
        ),
        Stack(
          children: [
            Image(
                image: AssetImage('assets/images/Rectangle 3.png'),
                color: provider.isDarkMode()
                    ? MyTheme.primaryDark
                    : MyTheme.countColor),
            Container(
                margin: EdgeInsets.only(left: 29, top: 25),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: provider.isDarkMode()
                        ? MyTheme.whiteColor
                        : MyTheme.primaryLight,
                    fontSize: 25,
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Stack(
          children: [
            Image(
                image: AssetImage('assets/images/Rectangle 4.png'),
                color: provider.isDarkMode()
                    ? MyTheme.yellowColor
                    : MyTheme.countColor),
            Container(
                margin: EdgeInsets.only(left: 25, top: 5),
                child: Text(
                  'سبحان الله',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MyTheme.whiteColor,
                    fontSize: 25,
                  ),
                )),
          ],
        ),
      ],
    );
  }

  double rotation = 0;

  String text = '';

  int counter = 0;

  int index = 0;

  void OnClick() {
    setState(() {
      if (counter < 33) {
        counter++;
        text = '$counter';
      } else {
        counter = 0;
        text = '0';
        index++;
      }
    });
  }
}
