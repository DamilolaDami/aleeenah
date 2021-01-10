
import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blue,
      elevation: 0,
      leading: IconButton(icon: Icon(
        Icons.arrow_back_ios,
      ), onPressed:() => Navigator.pop(context),
       ),
       title: Text('Cart',
       style: TextStyle(
         fontWeight: FontWeight.bold,
       ),
       ),
       actions: <Widget>[
        IconButton(icon:
        Icon( Icons.search), onPressed: (){},
        ),
       
        SizedBox(width:12),
        ],

    ),
    
body:Padding(
  padding: EdgeInsets.all(10.0),
 child: Column(
  children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:<Widget>[
    Container(
    child:  Text('Added', 
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    ),
    ),
    Container(
      child: Text('Price',
       style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    ),
    ),
  
  ],
  
),
SizedBox(
  height:30,
),
Column(
  children:<Widget>[
   
    Container(
           height: 180,
           width:160,
           decoration: BoxDecoration(
             color: Colors.white54,
             borderRadius: BorderRadius.circular(16),  
           ),
           
         ),
   ] ),
    ]
)
  )
    );

  
  }
}