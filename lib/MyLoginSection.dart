import 'package:flutter/material.dart';

import 'RegisterForm.dart';

void main(){
  runApp(new MaterialApp(
    home: MyLoginForm(),
  ));
}

class MyLoginForm extends StatefulWidget{
  @override
  MyLoginState createState() => MyLoginState();
}

class MyLoginState extends State<MyLoginForm>{

  String appTitle = 'User Login';
  String userLabel='Username';
  String passwordLabel='Password';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(appTitle),
        leading: new IconButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyRegisterationForm()));
        }, icon: new Icon(Icons.arrow_left)),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        margin: EdgeInsets.only(top:20.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                labelText: 'Username',
                hintText: 'Please enter you your Username',
                prefixIcon: new Icon(Icons.people),
              ),
              autofocus: true,
            ),

          ],

        ),
      ),
    );
  }
}