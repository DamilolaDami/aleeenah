import 'package:aleena/details/details_screen.dart';
import 'package:aleena/models/products.dart';
import 'package:flutter/material.dart';

class Ripped extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19.0),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          product: products[index],
                        ),
                      ),
                    ),
                  )),
        ),
      ),
    ]);
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              product.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              product.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            '\$${product.price}',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
