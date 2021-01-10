import 'package:aleena/loginscreen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0XFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
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
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen()));
                      },
                      child: Text('Skip',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Container(
                    height: 500,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/shop.jpg',
                                  height: 340,
                                  width: 250,
                                  color: Colors.blue,
                                  colorBlendMode: BlendMode.softLight,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Shop the best clothing online',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'A mobile app usually needs some static images. The images are usually stored in asset folder. ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/swag.jpg',
                                    height: 340,
                                    width: 250,
                                    color: Colors.blue,
                                    colorBlendMode: BlendMode.softLight,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Shop the best clothing online',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'A mobile app usually needs some static images. The images are usually stored in asset folder. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/white.jpg',
                                    height: 340,
                                    width: 250,
                                    color: Colors.blue,
                                    colorBlendMode: BlendMode.softLight,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Shop the best clothing online',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'A mobile app usually needs some static images. The images are usually stored in asset folder. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  _currentPage != _numPages - 1
                      ? Container(
                          height: 70,
                          child: Align(
                            alignment: FractionalOffset.bottomRight,
                            child: FlatButton(
                                onPressed: () {
                                  _pageController.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Next',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                  ],
                                )),
                          ))
                      : Text('')
                ],
              )),
            ),
          ),
        ),
        bottomSheet: _currentPage == _numPages - 1
            ? Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 30.0),
                      child: Text('Get Started',
                          style: TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF5B16D0),
                          )),
                    ),
                  ),
                ))
            : Text(''));
  }
}
