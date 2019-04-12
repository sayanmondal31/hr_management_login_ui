import 'package:flutter/material.dart';
import 'package:sth_main/home_page/homepage_third.dart';
import 'package:sth_main/login/login_main.dart';
// import 'package:sth2/home_page/homepage_third.dart';
// import 'package:sth2/loginpage.dart/enter_login.dart';
// import 'package:sth2/loginpage.dart/sign_up_page.dart';



void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.amber
      ),
      home: new ButtonPage(),
    );
  }
}

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
  return new MaterialApp(
      title: 'Hello World App',
      home: new Scaffold(
        appBar: new AppBar(
          elevation: 20.0,
          title: new Text('HR MANAGEMENT'),
          backgroundColor: Colors.cyan,
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

             
              new RaisedButton(
                child: new Text('HEAD', style: new TextStyle(fontSize: 20.0,)),
                color: Colors.orangeAccent,
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                elevation: 10.0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                splashColor: Colors.white70,
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new MyLoginApp()));
                },
              ),
              
              new Padding(
                padding: EdgeInsets.all(20.0),
                ),
              new RaisedButton(
                child: new Text('EMPLOYEE', style: new TextStyle(fontSize: 20.0,)),
                color: Colors.orangeAccent,
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                elevation: 10.0,
                splashColor: Colors.white70,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new HomePage()));
                  // Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new SignupPage()));

                },
                
              ),
              new Padding(
                padding: EdgeInsets.all(20.0),
                ),
              new RaisedButton(
                child: new Text('ASSISTANT', style: new TextStyle(fontSize: 20.0,)),
                color: Colors.orangeAccent,
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                elevation: 10.0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                splashColor: Colors.white70,
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

