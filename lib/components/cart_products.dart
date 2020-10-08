import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  @override
  var Products_cart = [
    {
      "name": "All out",
      "picture": "images/p2.png",
      "price": 85,
      "color": "Red",
      "quantity": 1,
      "size": 'S'
    },
  ];
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_pictures: Products_cart[index]["picture"],
          cart_prod_name: Products_cart[index]["name"],
          cart_prod_color: Products_cart[index]["color"],
          cart_prod_price: Products_cart[index]["price"],
          cart_prod_qty: Products_cart[index]["quantity"],
          cart_prod_size: Products_cart[index]["size"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  @override
  final cart_prod_name;
  final cart_prod_pictures;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_pictures,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });

  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(
          cart_prod_pictures,
          width: 80.0,
          height: 80.0,
        ),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: [
            new Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.cyan),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color"),
                ),
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(
                      cart_prod_color,
                      style: TextStyle(color: Colors.cyan),
                    )),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                ),
              ),
            ),
          ],
        ),
        trailing: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: new IconButton(
                icon: Icon(
                  Icons.arrow_drop_up,
                ),
                // constraints: BoxConstraints(maxWidth: 20, maxHeight: 20),
                onPressed: () {},
              ),
            ),
            new Text("${cart_prod_qty}"),
            Expanded(
              child: new IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  // constraints: BoxConstraints(maxWidth: 10, maxHeight: 10),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
