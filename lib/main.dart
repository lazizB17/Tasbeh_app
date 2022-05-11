import 'package:flutter/material.dart';
import 'package:lesson1_flutter/screens/home_page.dart';
import 'package:lesson1_flutter/screens/zikr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        Zikr.id: (context) => Zikr(),
      },
    );
  }
}


