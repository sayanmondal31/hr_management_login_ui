import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sth_main/home_page/drawer/activity.dart';
import 'package:sth_main/home_page/drawer/balance.dart';
import 'package:sth_main/home_page/drawer/leave.dart';
import 'package:sth_main/home_page/drawer/my_friend.dart';
import 'package:sth_main/home_page/drawer/notification.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("HR MANAGEMENT"),
        elevation: 12.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("sayan mondal"),
              accountEmail: new Text("sayan@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.cyan,
                child: new Text("s"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.cyan,
                child: new Text("s"),
                )
              ],
            ),
        //      new ListTile(
        //    title: new Text("home"),
        //    trailing: new Icon(Icons.home),
        //    onTap: (){
        //      Navigator.of(context).pop();
        //      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new NewPage("home")));
        //    },
        //  ),
         new ListTile(
           title: new Text("my friend"),
           trailing: new Icon(Icons.people),
                      onTap: (){
             Navigator.of(context).pop();
             Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new FriendPage("friend list")));
                      },
         ),
         new ListTile(
           title: new Text("leave"),
           trailing: new Icon(Icons.priority_high),
                                 onTap: (){
             Navigator.of(context).pop();
             Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new LeavePage("leave")));
                      },
         ),
         
                  new ListTile(
           title: new Text("activity"),
           trailing: new Icon(Icons.local_activity),
                                 onTap: (){
             Navigator.of(context).pop();
             Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new ActivityPage("activity")));
                      },
         ),
                  new ListTile(
           title: new Text("balance"),
           trailing: new Icon(Icons.account_balance_wallet),
                                 onTap: (){
             Navigator.of(context).pop();
             Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new BalancePage("balance")));
                      },
         ),
         new Divider(),
                  new ListTile(
           title: new Text("notification"),
           trailing: new Icon(Icons.notifications),
                                 onTap: (){
             Navigator.of(context).pop();
             Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex)=>new NotificationPage("notification")));
                      },
         ),
         new Divider(),
         new ListTile(
           title: new Text("log out "),
           trailing: new Icon(Icons.close),
           onLongPress: (){
             FirebaseAuth.instance.signOut().then((value){

             }).catchError((e){
               print(e);
             });

           }
         ),
        
          ],
        ),
        
      ),
      
      body: new Container(
        child: new Center(
          child: new Text("home page"),
        ),
      ),
    );
  }
}