import 'package:flutter/material.dart';
class CartCoutner extends StatefulWidget {
  @override
  _CartCoutnerState createState() => _CartCoutnerState();
}

class _CartCoutnerState extends State<CartCoutner> {
   int numOfItems = 1;
  @override
 
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
       buildOutlineButton(
       icon: Icons.remove,
      press: (){
      if (numOfItems > 1){
        setState(() {
          numOfItems--;
        });
      }
       }
        ),
    Padding(
      padding: EdgeInsets.all(8.0),
    child:Text(
      numOfItems.toString().padLeft(2, '0'),
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 19,
      color: Colors.black,
    ),
     ),
    ),
     buildOutlineButton(
       icon: Icons.add,
      press: (){
        setState(() {
          numOfItems++;
        });
      },
    ),
      ],
    );

  }

       SizedBox buildOutlineButton({IconData icon, Function press}){
         return SizedBox(
          height:32,
          width:40,
          child: OutlineButton(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10),
            ),
            onPressed:press,
            child:Icon(icon),
          )
        );

  }
}
