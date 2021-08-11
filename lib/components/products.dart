import 'package:flutter/material.dart';
import 'package:zha/pages/prod_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Tomoto",
      "picture": "assets/products/tomoto.jpg",
      "old_price": "20",
      "price": "25.00",
    },
    {
      "name": "Onion",
      "picture": "assets/products/onion.jpg",
      "old_price": "10",
      "price": "12.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_product(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_product extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_product({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
            child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Prod_details(
                    prod_detail_name: prod_name,
                    prod_detail_price: prod_price,
                    prod_detail_oldprice: prod_old_price,
                    prod_detail_picture: prod_picture,
                  ))),
          child: Container(
              child: GridTile(
            footer: Container(
                color: Colors.black54,
                height: 45.0,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  title: Text(
                    "\₹ $prod_price",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                )),
            child: Image.asset(
              prod_picture,
              fit: BoxFit.cover,
            ),
          )),
        )),
      ),
    );
  }
}
