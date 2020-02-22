

import 'package:flutter/material.dart';
import 'package:flutter_app1/Cart/cart.dart';
import 'package:flutter_app1/Profile/profile.dart';
import 'package:flutter_app1/Search/searchpage.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex=0;
  List<Widget> contents =[SearchPage(),CartPage(),ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("MyPage"),


      body:Center(child:contents[currentIndex]) ,

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: getCurrentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.add_to_home_screen), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart), title: Text("cart")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), title: Text("Profile")),

          ]),
    );
  }
    void getCurrentIndex(int value){
      setState(() {
        currentIndex=value;
      });

  }
}
