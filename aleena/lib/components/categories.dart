import 'package:flutter/material.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  PageController _pageController = PageController(
    initialPage: 0,

  );
  List<String> categories =['Hoodies','Black', 'White','Ripped','Merchandise'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:8.0),
    child:SizedBox(
      height: 24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index)=> buildCategory(index),
      ),
    ),
    );
  }
  Widget buildCategory(int index){
    return GestureDetector(
     
      onTap: (){
        selectedIndex = index;
       _pageController.animateToPage(index , 
       duration: Duration(
         milliseconds: 200,
       ), 
       curve: Curves.linear, 
       
       );
        setState(() {
          selectedIndex =index;
        });
      },

    child: Padding(padding: 
    const EdgeInsets.symmetric(horizontal:25.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
  Text(
          categories[index],
          style:TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ?  Colors.black: Colors.black38,
          ),
          ),
          Container(
            margin: EdgeInsets.only(top:4),
            height: 2,
            width: 30,
            color: selectedIndex == index? Colors.black: Colors.transparent ,
          ),
      ],
      ),
    ),
    );
  }
}