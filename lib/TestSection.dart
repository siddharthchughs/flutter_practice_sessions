import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GlobalConstants.dart';

void main(){
  runApp(new MaterialApp(
    home: MyDisplayForm(),
  ));
}


class MyDisplayForm extends StatefulWidget{
  @override
  MyStateDisplayForm createState() => MyStateDisplayForm();

}

class MyStateDisplayForm extends State<MyDisplayForm>{

  String data= '';
  final clear_Controller = new TextEditingController();

  void pressState(){
    setState(() {
      
    });
  }

  void clearAll(){
    setState(() {
      clear_Controller.clear();
      clear_Controller.text='';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(appTitle),
        leading: new Icon(Icons.home),
      ),

      body: new Container(
        margin: EdgeInsets.all(30.0),
        child : new Center(
          child: Column(
            children: <Widget>[
             new Text(appTitle)  ,
             new TextField(
                controller: clear_Controller,
                decoration: InputDecoration(
                contentPadding:EdgeInsets.fromLTRB(2, 2, 2, 2),
                labelText: 'Name',
                hintText: userName,
                icon: new Icon(Icons.people),
                suffixIcon: new IconButton(onPressed: (){
                  clear_Controller.clear();
                }, icon: new Icon(Icons.clear)),
              ),
                autofocus: true,
                autocorrect: true,
                keyboardType: TextInputType.text,
             ),
              new TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding:EdgeInsets.fromLTRB(2, 2, 2, 2),
                  labelText: 'Password',
                  hintText: userPassword,
                  icon: new Icon(Icons.people),
                    suffixIcon: new IconButton(onPressed: clearAll, icon: new Icon(Icons.remove_red_eye)),
                 ),
                autofocus: true,
                autocorrect: true,
                keyboardType: TextInputType.text,
              ),
          new Container(
            margin: EdgeInsets.only(top:20.0),
              child : new ElevatedButton(
                  onPressed: null,
                  child: new Text(
                      submitButton
                  )
              ),
          )
            ],
          ),
        )
      ),
    );



  }
}
