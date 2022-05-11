import 'package:flutter/material.dart';

class Zikr extends StatefulWidget {
  static const id = "/zikr";
  const Zikr({Key? key}) : super(key: key);

  @override
  State<Zikr> createState() => _ZikrState();
}

class _ZikrState extends State<Zikr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tasbeh app !'),
        backgroundColor: Colors.red,
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Center(
            child: Text(
              "\nSubhanallah !\n\nAlhamdulillah !\n\nAllohu Akbar !",
              style: TextStyle(fontSize: 31.0, color: Colors.black),
            ),
          ),
        ],
      )),
    );
  }
}
