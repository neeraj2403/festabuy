import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  TextEditingController _controller = TextEditingController();
  TextEditingController controller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController controller_ = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = "0";
    controller.text = "0";
    controller_.text = "0"; // Setting the initial value for the field.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _wishlist(context),
    );
  }

  _wishlist(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 150.0, bottom: 10.0),
          child: Text(
            "WISHLIST",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              height: 200,
              width: 150,
              child: Image.network(
                "https://sc02.alicdn.com/kf/HTB1NkFEae6sK1RjSsrbq6xbDXXaK/232913273/HTB1NkFEae6sK1RjSsrbq6xbDXXaK.jpg",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Casual Clothes in Modern Style"),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Price"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: Text("\$28"),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Quantity"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Container(
                width: 50.0,
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: Colors.blueGrey,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        controller: controller,
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: false,
                          signed: true,
                        ),
                        inputFormatters: <TextInputFormatter>[
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Container(
                      height: 38.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: InkWell(
                              child: Icon(
                                Icons.arrow_drop_up,
                                size: 18.0,
                              ),
                              onTap: () {
                                int currentvalue = int.parse(controller.text);
                                setState(() {
                                  currentvalue++;
                                  controller.text = (currentvalue)
                                      .toString(); // incrementing value
                                });
                              },
                            ),
                          ),
                          InkWell(
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 18.0,
                            ),
                            onTap: () {
                              int currentvalue = int.parse(controller.text);
                              setState(() {
                                print("Setting state");
                                currentvalue--;
                                controller.text =
                                    (currentvalue > 0 ? currentvalue : 0)
                                        .toString(); // decrementing value
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 275.0, top: 20.0, left: 10.0),
          child: Container(
            color: Colors.red,
            width: 20.0,
            height: 30.0,
            child: FlatButton(
              onPressed: () {},
              child: Text("Add To Cart"),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              height: 200.0,
              width: 150.0,
              child: Image.network(
                "https://n1.sdlcdn.com/imgs/c/9/8/Lambency-Brown-Solid-Casual-Blazers-SDL781227769-1-1b660.jpg",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Casual Clothes in Modern Style"),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Price"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: Text("\$28"),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Quantity"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Container(
                width: 50.0,
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: Colors.blueGrey,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        controller: _controller,
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: false,
                          signed: true,
                        ),
                        inputFormatters: <TextInputFormatter>[
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Container(
                      height: 38.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: InkWell(
                              child: Icon(
                                Icons.arrow_drop_up,
                                size: 18.0,
                              ),
                              onTap: () {
                                int currentValue = int.parse(_controller.text);
                                setState(() {
                                  currentValue++;
                                  _controller.text = (currentValue)
                                      .toString(); // incrementing value
                                });
                              },
                            ),
                          ),
                          InkWell(
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 18.0,
                            ),
                            onTap: () {
                              int currentValue = int.parse(controller.text);
                              setState(() {
                                print("Setting state");
                                currentValue--;
                                controller.text =
                                    (currentValue > 0 ? currentValue : 0)
                                        .toString(); // decrementing value
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 275.0, top: 20.0, left: 10.0),
          child: Container(
            color: Colors.red,
            width: 30.0,
            height: 30.0,
            child: FlatButton(
              onPressed: () {},
              child: Text("Add To Cart"),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              height: 200.0,
              width: 150.0,
              child: Image.network(
                "https://images-na.ssl-images-amazon.com/images/I/71O0zS0DT0L._UX342_.jpg",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Casual Clothes in Moderbn Style"),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Price"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: Text("\$28"),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Quantity"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Container(
                width: 50.0,
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: Colors.blueGrey,
                    width: 2.0,
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        controller: controller_,
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: false,
                          signed: true,
                        ),
                        inputFormatters: <TextInputFormatter>[
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Container(
                      height: 38.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: InkWell(
                              child: Icon(
                                Icons.arrow_drop_up,
                                size: 18.0,
                              ),
                              onTap: () {
                                int _currentvalue = int.parse(controller_.text);
                                setState(() {
                                  _currentvalue++;
                                  controller_.text = (_currentvalue)
                                      .toString(); // incrementing value
                                });
                              },
                            ),
                          ),
                          InkWell(
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 18.0,
                            ),
                            onTap: () {
                              int _currentvalue = int.parse(controller_.text);
                              setState(() {
                                print("Setting state");
                                _currentvalue--;
                                controller_.text =
                                    (_currentvalue > 0 ? _currentvalue : 0)
                                        .toString(); // decrementing value
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 275.0, top: 20.0, left: 10.0),
          child: Container(
            color: Colors.red,
            width: 30.0,
            height: 30.0,
            child: FlatButton(
              onPressed: () {},
              child: Text("Add To Cart"),
            ),
          ),
        ),
      ],
    );
  }
}
