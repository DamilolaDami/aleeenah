import 'package:aleena/models/products.dart';
import 'package:flutter/material.dart';

import 'detailsbody.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF5036D5),
      appBar: AppBar(
        backgroundColor: Color(0XFF5036D5),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          ),
          SizedBox(width: 2),
        ],
      ),
      body: DetailsBody(product: product),
    );
  }
}
