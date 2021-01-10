import 'package:aleena/models/products.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);
  final Product product;
  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        product.description,
        style: TextStyle(
          height: 1.5,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
