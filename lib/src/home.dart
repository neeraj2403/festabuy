import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:testapp/components/product.dart';

import 'package:testapp/components/Horizontal_listview.dart';
import 'package:testapp/src/cart1.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.contain,
        images: [
          AssetImage("images/slide.png"),
          AssetImage("images/slide.png"),
          AssetImage("images/slide.png"),
          AssetImage("images/slide.png"),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 500),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: new Column(
        children: [
          image_carousel,
          new Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              child: Text('Categories',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft,
            ),
          ),
          // the horizontal view
          HorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              child: Text("Best Seller",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft,
            ),
          ),

          Flexible(child: Products()),
        ],
      ),
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text("FestaBuy"),
        actions: [
          Hero(
              tag: 'search',
              child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {})),
          Hero(
              tag: 'cart',
              child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context) => new Cart()))))
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: Text("Abcd"),
              accountEmail: Text('abcd@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.cyan),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home, color: Colors.cyan),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.person, color: Colors.cyan),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket, color: Colors.cyan),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.dashboard, color: Colors.cyan),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourite"),
                leading: Icon(Icons.favorite, color: Colors.cyan),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings, color: Colors.cyan),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help, color: Colors.cyan),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
