/*TO DO LIST
* for a new project in flutter steps for making basic file to basic template
* 1. In the lib folder create a .dart file (name it as u like )
* 2. import the required package for the project to be made under flutter structure with using material design
* 3. create void main : main execution of the file ftom the file, where the execution gets initiates.
* 4.
* 5.
* */

import 'dart:html';

import 'package:flutter/material.dart';

void main(){
     runApp(new MaterialApp(
           home: new MyPage(),
     ));
}
//This the Subject that's using the State to remember it state in the StatefulWidget
class MyPage extends StatefulWidget{
      @override
      MyPageState createState()=> MyPageState();
}

// State  of  the Mypage Can be changed at any time during it lifetime working, promptly.
class MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Demo App'),
      ),
      body:Container(
        padding: new EdgeInsets.all(32.0),
        child:new Center(
          child: new Column(children: <Widget>[new Text('Its me again the new template just designed ')],),
        ),
      ),
    );
  }

}


