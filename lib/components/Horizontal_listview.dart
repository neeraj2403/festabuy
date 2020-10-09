import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/h1.jpg',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'images/h2.jpg',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'images/img4.jpg',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'images/img5.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'images/img5.png',
            image_caption: 'shirt',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 40.0,
              height: 70.0,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
