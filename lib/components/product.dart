import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  var product_list = [
    {
      "name": "All out",
      "picture": "images/p2.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Shampoo",
      "picture": "images/p1.jpg",
      "old_price": 220,
      "price": 185,
    },
    {
      "name": "All out",
      "picture": "images/p2.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Shampoo",
      "picture": "images/p1.jpg",
      "old_price": 220,
      "price": 185,
    },
    {
      "name": "All out",
      "picture": "images/p2.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Shampoo",
      "picture": "images/p1.jpg",
      "old_price": 220,
      "price": 185,
    },
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pictures: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pictures;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pictures,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: new Text("Hero1"),
      child: Material(
        child: InkWell(
          onTap: () {},
          child: GridTile(
            footer: Container(
                color: Colors.white70,
                child: new Row(
                  children: [
                    Expanded(
                      child: new Text(
                        prod_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                    new Text(
                      '$prod_price',
                      style: TextStyle(
                          color: Colors.cyan, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            child: Image.asset(
              prod_pictures,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ));
  }
}
