import 'package:flutter/material.dart';
import 'package:lesson1_flutter/screens/zikr.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tasbehCount = 0;

  void counter() {
    setState(() {
      _tasbehCount++;
      if (_tasbehCount == 33) {
        return;
      }
    });
  }

  void refresh() {
    setState(() {
      _tasbehCount = 0;
    });
  }

  void zikrPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Zikr();
    }));
  }

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
              "Subhanallah !\nAlhamdulillah !\nAllohu Akbar !",
              style: TextStyle(fontSize: 31.0, color: Colors.black),
            ),
          ),
          Expanded(
              child: Center(
            child: Text(
              '$_tasbehCount',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.w500),
            ),
          )),
          Expanded(
              child: Center(
            child: FlatButton(
                color: Colors.red,
                textColor: Theme.of(context).buttonColor,
                onPressed: counter,
                child: Text(
                  "Sanagich!",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          )),
          Expanded(
              child: Center(
            child: FlatButton(
                color: Colors.red,
                textColor: Theme.of(context).buttonColor,
                onPressed: zikrPage,
                child: Text(
                  "Zikr Page",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          )),
          Expanded(
              child: Center(
            child: FlatButton(
                color: Colors.red,
                textColor: Theme.of(context).buttonColor,
                onPressed: refresh,
                child: Text(
                  "Qaytadan boshlash!",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )),
          ))
        ],
      )),
    );
  }
}
