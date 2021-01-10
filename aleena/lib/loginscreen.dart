import 'package:aleena/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'signupscreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 180,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      'Welcome To Aleenah',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                  ]),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(130),
              ),
              color: Color(0XFF5B16D0),
            ),
          ),
          Theme(
            data: ThemeData(
              hintColor: Colors.blue,
            ),
            child: Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  left: 20,
                  right: 20,
                ),
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {},
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0XFF5B16D0),
                        width: 1,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0XFF5B16D0),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0XFF5B16D0),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0XFF5B16D0),
                        width: 1,
                      ),
                    ),
                  ),
                )),
          ),
          Theme(
            data: ThemeData(
              hintColor: Colors.blue,
            ),
            child: Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                ),
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {},
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0XFF5B16D0),
                        width: 1,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0XFF5B16D0),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0XFF5B16D0),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0XFF5B16D0),
                        width: 1,
                      ),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Container(
                width: double.infinity,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color(0XFF5B16D0),
                  ),
                  textAlign: TextAlign.right,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen()));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Color(0XFF5B16D0),
              child: Text(
                'Log in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              padding: EdgeInsets.all(10),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.pinkAccent,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: RaisedButton(
                onPressed: () {},
                color: Colors.white,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.google,
                      color: Colors.pinkAccent,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Sign In With Google',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000725),
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: RaisedButton(
                onPressed: () {},
                color: Colors.white,
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Sign In With Facebook',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000725),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(height: 5),
          Center(
            child: Column(
              children: [
                Text(
                  'Don\'t have An Account?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => SignUpScreen()));
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 1,
                  color: Colors.blue,
                ),
                Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
