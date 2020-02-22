import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("My Profile"),
      ),
      body: SafeArea(
          child: Column(children: <Widget>[
        Row(children: <Widget>[Padding(padding: const EdgeInsets.all(8.0)),
          CircleAvatar(
            maxRadius: 30,
            backgroundImage:AssetImage('assets/images/index.jpeg'),
            backgroundColor: Colors.transparent,
          ),
          Column(
            children: <Widget>[Text("JUSTIN"),Text("@JOE")],
          ),
        ],),
            SizedBox(height: 50,width: 70,),
            Row(mainAxisSize: MainAxisSize.max,children: <Widget>[Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold),),
            )
            ],),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                ListTile(title: Text("My Preference"),
                trailing: Icon(Icons.arrow_forward_ios),),
                ListTile(title: Text("My Subscriber"),
                trailing: Icon(Icons.arrow_forward_ios),),
                ListTile(title: Text("Contact Support"),
                trailing: Icon(Icons.arrow_forward_ios),),
                ListTile(title: Text("Change Password"),
                trailing: Icon(Icons.arrow_forward_ios),),
              ],
            ),SizedBox(height: 50,width: 70,),
            Row(mainAxisSize: MainAxisSize.max,children: <Widget>[Padding(
           padding: const EdgeInsets.all(8.0),
              child: Text("Please feel free to Contact us for any queries &feedback"))])
      ],)),
      
    );
    
    
  }
}