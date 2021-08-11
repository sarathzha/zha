import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zha/splash.dart';
import 'components/horizontal.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: _HomePageState(),
  ));
}

class _HomePageState extends StatefulWidget {
  @override
  __HomePageStateState createState() => __HomePageStateState();
}

class __HomePageStateState extends State<_HomePageState> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      height: 250.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/zha.jpg'),
          AssetImage('assets/images/img1.jpg'),
          AssetImage('assets/images/img2.jpg'),
          AssetImage('assets/images/img3.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 1.0,
        dotBgColor: Colors.transparent,
        dotColor: Colors.black,
      ),
    );
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.black,
          title: Text('Zha'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {}),
          ],
        ),
        drawer: new Drawer(
            child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('SARATH KUMAR R'),
              accountEmail: Text('sarathflopz@gmail.com'),
              arrowColor: Colors.amberAccent,
              currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person),
                      foregroundColor: Colors.black26)),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Category'),
                leading: Icon(Icons.add_shopping_cart, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourities'),
                leading: Icon(Icons.favorite, color: Colors.black),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),
          ],
        )),
        body: ListView(
          children: <Widget>[
            imageCarousel,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('CATEGORIES'),
            ),
            HorizontalList(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('RECENT PRODUCTS'),
            ),
            Container(
              height: 320.0,
              child: Products(),
            )
          ],
        ),
      ),
    );
  }
}
