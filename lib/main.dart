import 'package:flutter/material.dart';

// void main section is where the code execution takes place.

void main() {
runApp(new MaterialApp(home: new MyApp())
);
}
class MyApp extends StatefulWidget{
  //stateful widget is the defining the state of the object that are being updated promptly
  // during their lifecycle process. create state of the object  createState()
  @override
  MyState createState() => new MyState();

}
class MyState extends State<MyApp>{
   @override
   Widget build(BuildContext build_context) {
     return new Scaffold(
       appBar: new AppBar(
         title: new Text('Name here'),),
       body: new Container(padding: new EdgeInsets.all(32.0), child: new Center(child: new Column(children: <Widget>[new Text("Hey there")],
           ),
         ),
       ),
     );
   }
}

 



