import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 40.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "PRODUCT DETAIL",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: _buildProductDetailsPage(context),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildProductDetailsPage(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4.0),
          child: Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildProductImagesWidgets(),
                _buildProductTitleWidget(),
                SizedBox(height: 12.0),
                _buildPriceWidgets(),
                SizedBox(height: 12.0),
                _buildDivider(screenSize),
                SizedBox(height: 12.0),
                _buildFurtherInfoWidget(),
                SizedBox(height: 12.0),
                _buildDivider(screenSize),
                SizedBox(height: 12.0),
                _buildSizeChartWidgets(),
                SizedBox(height: 12.0),
                _buildDetailsAndMaterialWidgets(),
                SizedBox(height: 12.0),
                _buildStyleNoteHeader(),
                SizedBox(height: 6.0),
                _buildDivider(screenSize),
                SizedBox(height: 4.0),
                _buildStyleNoteData(),
                SizedBox(height: 20.0),
                _buildMoreInfoHeader(),
                SizedBox(height: 6.0),
                _buildDivider(screenSize),
                SizedBox(height: 4.0),
                _buildMoreInfoData(),
                SizedBox(height: 24.0),
                _buildReview(),
                SizedBox(height: 50.0),
                _buildReply(),
                SizedBox(height: 25.0),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[600],
          width: screenSize.width,
          height: 0.25,
        ),
      ],
    );
  }

  _buildProductImagesWidgets() {
    TabController imagesController = TabController(length: 3, vsync: this);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 250.0,
        child: Center(
          child: DefaultTabController(
            length: 3,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.network(
                      "https://sc02.alicdn.com/kf/HTB1NkFEae6sK1RjSsrbq6xbDXXaK/232913273/HTB1NkFEae6sK1RjSsrbq6xbDXXaK.jpg",
                    ),
                    Image.network(
                      "https://n1.sdlcdn.com/imgs/c/9/8/Lambency-Brown-Solid-Casual-Blazers-SDL781227769-1-1b660.jpg",
                    ),
                    Image.network(
                      "https://images-na.ssl-images-amazon.com/images/I/71O0zS0DT0L._UX342_.jpg",
                    ),
                  ],
                ),
                Container(
                  alignment: FractionalOffset(0.5, 0.95),
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitleWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        //name,
        "Nakkana",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _buildPriceWidgets() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            "\$899",
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            "\$1299",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            "30% Off",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.blue[700],
            ),
          ),
        ],
      ),
    );
  }

  _buildFurtherInfoWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.local_offer,
            color: Colors.grey[500],
          ),
          SizedBox(
            width: 12.0,
          ),
          Text(
            "Tap to get further info",
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }

  _buildSizeChartWidgets() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.straighten,
                color: Colors.grey[600],
              ),
              SizedBox(
                width: 12.0,
              ),
              Text(
                "Share",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 18.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 18.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 18.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildDetailsAndMaterialWidgets() {
    TabController tabController = new TabController(length: 2, vsync: this);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "DETAILS",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "MATERIAL & CARE",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            height: 40.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Text(
                  "76% acrylic, 19% polyster, 5% metallic yarn Hand-wash cold",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  "86% acrylic, 9% polyster, 1% metallic yarn Hand-wash cold",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildStyleNoteHeader() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
      ),
      child: Text(
        "STYLE NOTE",
        style: TextStyle(
          color: Colors.grey[800],
        ),
      ),
    );
  }

  _buildStyleNoteData() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
      ),
      child: Text(
        "Boys dress",
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
    );
  }

  _buildMoreInfoHeader() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
      ),
      child: Text(
        "MORE INFO",
        style: TextStyle(
          color: Colors.grey[800],
        ),
      ),
    );
  }

  _buildMoreInfoData() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
      ),
      child: Text(
        "Product Code: 410\nTax info: Applicable GST will be charged at the time of chekout",
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
    );
  }

  _buildReview() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 280.0, bottom: 15.0),
            child: Text(
              "Review",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Shradha Shejil',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Text('January 1, 2021'),
                    Text("abcdefghijklmnopqrstuvwxyz"),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildReply() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 180.0, bottom: 10.0),
            child: Text(
              "Leave Your Reply",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextField(
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
          Padding(
            padding: const EdgeInsets.only(left: 1.0, top: 5.0, bottom: 5.0),
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
                onPressed: () {},
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

  _buildBottomNavigationBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.grey,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "SAVE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.greenAccent,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.card_travel,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "ADD TO BAG",
                      style: TextStyle(color: Colors.white),
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
