import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/components/vegetables2.jpg',
            image_caption: 'VEGETABLES',
          ),
          Category(
            image_location: 'assets/components/fruits2.jpg',
            image_caption: 'VEGETABLES',
          ),
          Category(
            image_location: 'assets/components/staples2.jpg',
            image_caption: 'VEGETABLES',
          ),
          Category(
            image_location: 'assets/components/masala2.jpg',
            image_caption: 'VEGETABLES',
          ),
          Category(
            image_location: 'assets/components/edible2.jpg',
            image_caption: 'OILS',
          ),
          Category(
            image_location: 'assets/components/lettuce2.jpg',
            image_caption: 'VEGETABLES',
          ),
          Category(
            image_location: 'assets/components/snacks2.jpg',
            image_caption: 'VEGETABLES',
          ),
          Category(
            image_location: 'assets/components/Exotic2.jpg',
            image_caption: 'VEGETABLES',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    this.image_caption,
    this.image_location,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                ),
              )),
        ),
      ),
    );
  }
}
