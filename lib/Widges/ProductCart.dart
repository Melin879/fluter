import 'package:flutter/material.dart';
import 'package:flutter_app1/model/Product.dart';


class ProductCart extends StatelessWidget {
  Product product;
  ProductCart(this.product);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          child: Column(mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset(product.address),
              ListTile(title: Text(product.item),
                  subtitle:Row(children: <Widget>[
                    Text(product.price.toString()),
                    Text(product.quantity.toString())
                  ],)),
            ],),

        ));

  }
}


