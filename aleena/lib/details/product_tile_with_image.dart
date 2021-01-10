import 'package:aleena/models/products.dart';
import 'package:flutter/material.dart';

class ProductTileWithImage extends StatelessWidget {
  const ProductTileWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Hoodie',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  )),
              Text(
                product.title,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 18),
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'Price\n'),
                        TextSpan(
                          text: '\$${product.price}',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Expanded(
                    child: Image.asset(
                      product.image,
                      height: 180,
                      width: 170,
                      fit: BoxFit.fitHeight,
                    ),
                  )
                ],
              )
            ]));
  }
}
