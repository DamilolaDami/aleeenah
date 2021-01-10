import 'package:aleena/details/description.dart';
import 'package:aleena/models/products.dart';
import 'package:flutter/material.dart';
import 'add_to_cart.dart';
import 'cartcounter.dart';
import 'colorandsize.dart';
import 'product_tile_with_image.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                    top: size.height * 0.12, left: 19, right: 8),
                //  height:500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    ColorAndSize(product: product),
                    SizedBox(height: 11),
                    Description(product: product),
                    SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CartCoutner(),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color: Color(0XFFFF6464),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    AddToCart(product: product),
                  ],
                ),
              ),
              ProductTileWithImage(product: product),
            ],
          ),
        )
      ]),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 8,
        right: 8,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
