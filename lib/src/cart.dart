import 'dart:math';

import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Shopping cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21.0,
                ),
              ),
              SizedBox(height: 18.0),
              CartItem(),
              CartItem(),
              CartItem(),
              CartItem(),
              SizedBox(height: 18.0),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "\u20b9 345.00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deliver Charge",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "\u20b9 34.00",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sub Total",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    "\u20b9 390.00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              Spacer(),
              MaterialButton(
                onPressed: () {},
                color: Colors.cyan,
                height: 50.0,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  "PROCEED TO CHECKOUT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 18.0),
            ],
          ),
        ));
  }
}

class CartItem extends StatefulWidget {
  const CartItem({
    Key key,
  }) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    var _counter = 0;
    // void _incrementCounter() {
    //   setState(() {
    //     _counter++;
    //   });
    // }

    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.scaleDown,
                      image: NetworkImage(
                          "https://images-eu.ssl-images-amazon.com/images/I/31MyNsVdCWL._SX395_QL70_ML2_.jpg")),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          SizedBox(width: 5.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  width: 100.0,
                  child: Text(
                    "Nike shoe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 2.0),
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      child: RawMaterialButton(
                        onPressed: () {},
                        // elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.remove,
                          size: 10.0,
                        ),
                        // padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ),
                    //   child: Row(
                    //     children: [
                    //       Container(
                    //           // width: 20.0,
                    //           // height: 20.0,
                    //           child: RaisedButton(
                    //         shape: ,
                    //         color: Colors.white,
                    //         child: Icon(
                    //           Icons.add,
                    //           size: 15.0,
                    //           color: Colors.black,
                    //         ),
                    //         onPressed: () {
                    //           setState(() {
                    //             _counter = _counter + 1;
                    //           });
                    //         },
                    //       )),
                    //     ],
                    //   ),
                    // ),

                    //     child: Container(
                    //   width: 20.0,
                    //   height: 20.0,
                    //   decoration: BoxDecoration(
                    //       color: Colors.grey[300],
                    //       borderRadius: BorderRadius.circular(4.0)),
                    //   child: Center(
                    //     child: IconButton(
                    //       icon: Icon(Icons.add),
                    //       tooltip: 'Increment',
                    //       onPressed: () => _incrementCounter,
                    //       color: Colors.black,
                    //       iconSize: 10.0,
                    //     ),
                    //   ),
                    // )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "$_counter",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Container(
                      width: 20.0,
                      child: RawMaterialButton(
                        onPressed: () {
                          _counter++;
                        },
                        // elevation: 2.0,
                        fillColor: Colors.cyan,
                        child: Icon(
                          Icons.add,
                          size: 10.0,
                          color: Colors.white,
                        ),
                        // padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ),
                    // Icons.add,
                    // color: Colors.white,
                    // iconSize:12 ,

                    Spacer(),
                    Text(
                      "\u20b9 120.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
