import 'package:aleena/account_details.dart';
import 'package:aleena/carousel.dart';
import 'package:aleena/clothing_black.dart';
import 'package:aleena/clothing_white.dart';
import 'package:aleena/header.dart';
import 'package:aleena/loginscreen.dart';
import 'package:aleena/merch.dart';
import 'package:aleena/ripped.dart';
import 'package:flutter/material.dart';
import 'cartpage.dart';
import 'components/body.dart';
import 'components/categories.dart';
import 'models/products.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController(
    initialPage: 0,
  );
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(children: <Widget>[
        CarouselImage(),
        Header(),
        Categories(),
        Flexible(
          child: PageView(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                selectedIndex = page;
              });
            },
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Hoodies(),
              ClothingBlack(),
              ClothingWhite(),
              Ripped(),
              Merchandize(),
            ],
          ),
        )
      ]),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0XFF5036D5),
      elevation: 0,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => LoginScreen(),
              ),
            );
          }),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: ClothItemSearch());
          },
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ));
          },
        ),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AccountDetails(),
                ));
          },
        ),
        SizedBox(width: 12),
      ],
    );
  }
}

class ClothItemSearch extends SearchDelegate<Product> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
        child: Text(
      query,
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myList = query.isEmpty
        ? products
        : products.where((p) => p.title.startsWith(query)).toList();

    return myList.isEmpty
        ? Text(
            'No Results Found...',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          )
        : ListView.builder(
            itemCount: myList.length,
            itemBuilder: (BuildContext context, int index) {
              final Product listitem = myList[index];
              return ListTile(
                  onTap: () {
                    showResults(context);
                  },
                  title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listitem.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]));
            },
          );
  }
}
