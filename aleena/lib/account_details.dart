import 'package:aleena/home_screen.dart';
import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ],
                colors: [
                  Color(0xFF3594DD),
                  Color(0XFF4563DB),
                  Color(0XFF5036D5),
                  Color(0XFF5036D5),
                ]),
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: FlatButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HomeScreen()));
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                    ),
                    Center(
                      child: Column(children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text('Hello, Maleek Dami',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      ]),
                    ),
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text('Orders',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text('Pending Reviews',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text('Voucher Credit',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text('Recently Viewed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text('Favorites',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text('Settings',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text('Logout',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            )),
                      ],
                    )
                  ])))),
    );
  }
}
