import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyTemplate()));
}

class MyTemplate extends StatefulWidget {
  @override
  MyTemplateState createState() => MyTemplateState();
}

class MyTemplateState extends State<MyTemplate> {
  String app_Titile = "My Profile";
  String raw_Data = "My Profile";
  String btn_Ttile = "Please Press me !!";
  int counter = 0;

  void pressMe(String changeData) {
    setState(() {
      raw_Data = changeData;
    });
  }

  void pressAdd() {
    setState(() {
      counter++;
    });
  }

  void pressDecrement() {
    setState(() {
      counter--;
    });
  }

  void pressFlatMe() {
    setState(() {
      raw_Data = new DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(app_Titile),
      ),
      body: new Container(
        margin: const EdgeInsets.only(top: 10),
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Value: ${counter}'),
              new IconButton(
                  onPressed: () => pressAdd(), icon: new Icon(Icons.add)),
              new IconButton(
                  onPressed: () => pressDecrement(),
                  icon: new Icon(Icons.remove)),
              new ElevatedButton(
                onPressed: () => pressMe("hey you just clicked me, Thanks !!"),
                child: new Text(btn_Ttile),
              ),
              new FlatButton(
                onPressed: () => pressFlatMe(),
                child: new Text('I am flat button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
