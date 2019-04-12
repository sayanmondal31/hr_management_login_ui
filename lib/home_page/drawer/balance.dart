import 'package:flutter/material.dart';

class BalancePage extends StatefulWidget {
final String title;

BalancePage(this.title);

  @override
  BalancePageState createState() {
    return new BalancePageState();
  }
}

class BalancePageState extends State<BalancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("flutter cash app"),
        backgroundColor: Colors.indigo,
        centerTitle: false,
        elevation: 10.0,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              showDialog(context: context,
              builder: (context)=>new AlertDialog(
                title: new Text("Add"),
                content: new Container(
                  height: 100.0,
                  child: new Column(
                    children: <Widget>[
                      new Row(
                      children: <Widget>[
                        new Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.attach_money),
                        ),
                          new Padding(
                            padding: EdgeInsets.all(8.0),
                            child: new  MaterialButton(onPressed: (){},child: new Text("hey"),
                            ),
                          )
                      ],
                    )
                    ],
                    
                    
                  ),
                ),
              ));
            },
          )
        ],
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child:ListTile(
                title: new Text("balance: "),
                subtitle: new Text("\$300.0"),
              )

            ),
            // Divider(color: Colors.redAccent,),
            Expanded(
              child:ListTile(
                title: new Text("expand: "),
                subtitle: new Text("\$200.0",style: TextStyle(
                  color: Colors.redAccent
                ),),
              )

            ),
            // Divider(),
            Expanded(
              child:new IconButton(icon: Icon(Icons.remove_red_eye,
              color: Colors.purple, 
              ),
              onPressed: (){},
              )

            )
          ],
        ),
      ),
    );
  }
}

