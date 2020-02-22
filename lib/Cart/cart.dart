
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app1/Widges/ProductCart.dart';
import 'package:flutter_app1/model/Product.dart';
class CartPage extends StatelessWidget {

  List<Product>products =new List();
  CartPage(){
    products.add(Product('Strawberry','assets/images/images.jpeg',5,10));
    products.add(Product('banana','assets/images/index.jpeg',5,10));

  }
  @override
  Widget build(BuildContext context) {
    //return ProductCart(Product('Strawberry','assets/images/index.jpeg', 5, 10));
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: products.length,
        itemBuilder: (context,position){
        return ProductCart(products[position]);
        }
    );
  }
}


