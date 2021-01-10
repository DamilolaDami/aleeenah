import 'package:aleena/models/products.dart';
import 'package:flutter/material.dart';
import 'detailsbody.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);
  final Product product;
  @override
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Color'),
            Row(
              children: <Widget>[
                ColorDot(
                  color: Color(0XFF355EC95),
                  isSelected: true,
                ),
                ColorDot(color: Color(0XFFF8C07B)),
                ColorDot(color: Color(0XFFA29B9B)),
              ],
            )
          ],
        ),
      ),
      Expanded(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
            TextSpan(
              text: ' Size\n',
            ),
            TextSpan(
              text: '${product.size}L',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ]))),
    ]);
  }
}
