import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sth_main/home_page/homepage_third.dart';
import 'package:sth_main/login/register_page.dart';
import 'package:sth_main/login/sign_in.dart';
// import 'package:flutter_auth_social/register_page.dart';
// import './emailPage.dart';
// import './signin_page.dart';

// void main() => runApp(MyLoginApp());

class MyLoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth',
      home: LoginPage(title: 'Firebase Auth'),
    );
  }
}


class LoginPage extends StatefulWidget {
  final String title;

  LoginPage({Key key, this.title}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email)
              ),
            ),
            SizedBox(height: 15.0,),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.vpn_key)
              ),
            ),
             SizedBox(height: 15.0,),
             FlatButton(
               child: Text('Login'),
               color: Colors.orangeAccent,
               textColor: Colors.white,
               onPressed: (){
                FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text).then((FirebaseUser user){
                   Navigator.of(context).pushReplacement(CupertinoPageRoute(
                  builder: (context) => HomePage(),
                  ));
                    }).catchError((e){
                      print(e);
                    });
              },
             ),
             FlatButton(
               child: Text('Register'),
               color: Colors.green,
               textColor: Colors.white,
               onPressed: () => _pushPage(context, RegisterPage()),
               ),
               VerticalDivider(),
               FlatButton(
               child: Text('Register'),
               color: Colors.green,
               textColor: Colors.white,
               onPressed: () => _pushPage(context, SignInPage()),
               ),
          ],
        ),
      ),
    );
  }
}


void _pushPage(BuildContext context, Widget page){
  Navigator.of(context).push(
    MaterialPageRoute<void>(builder: (context) => page),
  );
}
