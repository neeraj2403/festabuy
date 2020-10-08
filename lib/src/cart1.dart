import 'package:flutter/material.dart';

import 'package:testapp/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text("Shopping Cart"),
      ),
      body: new Cart_products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: new Text("Total"),
                subtitle: Text("\$230"),
              ),
            ),
            Expanded(
              child: new MaterialButton(
                onPressed: () {},
                child: Text(
                  "Proceed to Payment",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.cyan,
              ),
            )
          ],
        ),
      ),
    );
  }
}
