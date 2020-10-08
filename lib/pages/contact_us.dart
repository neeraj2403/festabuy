import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Text(
              "CONTACT",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                  hintText: 'Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                  hintText: 'Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.black12,
                      width: 3.0,
                    ),
                  ),
                  hintText: 'Subject'),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              width: 375.0,
              height: 200.0,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Message',
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 265.0, top: 30.0),
            child: Container(
              color: Colors.red,
              width: 100.0,
              height: 30.0,
              child: FlatButton(
                onPressed: null,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.send,
                    ),
                    Text(
                      "Send",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
