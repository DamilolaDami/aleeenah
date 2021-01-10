import 'package:aleena/models/products.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 8),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.blue,
                  )),
              child: IconButton(
                  icon: Icon(Icons.shopping_cart), onPressed: () {})),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                color: Color(0XFF5036D5),
                onPressed: () {},
                child: Text(
                  'Buy Now'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
