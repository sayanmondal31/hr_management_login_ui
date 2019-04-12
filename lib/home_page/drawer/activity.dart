import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
final String title;

ActivityPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        title: new Text("activity"),
      ),
      body: new Center(
        child: new Text("activities")
       ),
      
    );
  }
}