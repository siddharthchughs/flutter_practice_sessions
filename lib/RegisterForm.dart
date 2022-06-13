import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'MyLoginSection.dart';

void main(){
     runApp(new MaterialApp(
       home: MyRegisterationForm(),
     ));
}

class MyRegisterationForm extends StatefulWidget{
  @override
  MyStateRegisterationForm createState() => new MyStateRegisterationForm();
}

class  MyStateRegisterationForm extends State<MyRegisterationForm>{

  String value = '';
  String result = '';


  void onChangeInput(String name_input){
    setState(()=> value='Change: ${name_input}');
  }
  void onSubmitInput(String values_){
    setState(()=> value='Submit: ${values_}');
  }
  void submitForm(String addData){
    setState(() {
   result= addData;
    });
  }
   // void navigateToLogin(){
   //  setState(() {
   //  });
   // }


  @override
     Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Registration Form'),
        ),
        body: new Container(
          margin: new EdgeInsets.all(32.0),
          child: new Center(
              child: new Column(
                children: <Widget>[
                  new Text(value),
                  new TextField(
                    decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Hint',
                        icon: new Icon(Icons.people)
                    ),
                    autocorrect: true,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    onChanged: onChangeInput,
                    onSubmitted: onSubmitInput,
                  ),
                  new TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Please enter your password',
                      icon: new Icon(Icons.password_sharp),
                    ),
                    obscureText: true,
                    onSubmitted: onSubmitInput,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: new ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyLoginForm()));
                        },
                        child: new Text('Submit'),
                      )
                  ),
                ],
              )
          ),
        )
    );
  }
}



