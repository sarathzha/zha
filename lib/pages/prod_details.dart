import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Prod_details extends StatefulWidget {
  final prod_detail_name;
  final prod_detail_price;
  final prod_detail_oldprice;
  final prod_detail_picture;

  Prod_details({
    this.prod_detail_name,
    this.prod_detail_price,
    this.prod_detail_oldprice,
    this.prod_detail_picture,
  });
  @override
  _Prod_detailsState createState() => _Prod_detailsState();
}

class _Prod_detailsState extends State<Prod_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text('Zha'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          height: 250.0,
          child: GridTile(
            child: Container(
              color: Colors.black,
              child: Image.asset(
                widget.prod_detail_picture,
              ),
            ),
            footer: Container(
                color: Colors.black26,
                child: ListTile(
                  leading: Text(widget.prod_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20)),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "${widget.prod_detail_oldprice}",
                        ),
                      ),
                      Expanded(
                        child: Text("\₹ ${widget.prod_detail_price}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                      ),
                    ],
                  ),
                )),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: Text("Kg"),
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 1.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Kilogram",
                      style: TextStyle(color: Colors.black),
                    )),
                    Expanded(child: Icon(Icons.arrow_drop_down_outlined)),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.black,
                        textColor: Colors.grey,
                        elevation: 0.5,
                        child: Text(
                          "ADD CART",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.add_shopping_cart),
                        color: Colors.black,
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(Icons.favorite_border),
                        color: Colors.black,
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[],
        )
      ]),
    );
  }
}
