import 'package:flutter/material.dart';

class FriendPage extends StatelessWidget {
final String title;

FriendPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        title: new Text("friends"),
      ),
      body: new Center(
        child: new Text("your friend list")
       ),
      
    );
  }
}