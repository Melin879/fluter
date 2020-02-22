import 'package:flutter/material.dart';
import 'package:flutter_app1/Cart/cart.dart';
import 'package:flutter_app1/Profile/profile.dart';
import 'package:flutter_app1/Search/searchpage.dart';
import 'home/homepage.dart';
void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {

  final routes= <String,WidgetBuilder>{
    'home':(context)=> HomePage(),
    'cart':(context)=> CartPage(),
    'profile':(context)=>ProfilePage(),
    'search':(context)=>SearchPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"MCart",
      theme: ThemeData(
        primaryColor:Colors.blue
      ),
      routes: routes,
      initialRoute:'home',
    );
  }
}
