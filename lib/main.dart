import 'package:flutter/material.dart';
import 'package:practice_islamii/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeSreen.routeName,
      routes: {
        HomeSreen.routeName: (context) => HomeSreen(),
      },
    );
  }
}
