import 'package:flutter/material.dart';

class LeavePage extends StatelessWidget {
final String title;

LeavePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        title: new Text("home "),
      ),
      body: new Center(
        child: new Text("home page")
       ),
      
    );
  }
}