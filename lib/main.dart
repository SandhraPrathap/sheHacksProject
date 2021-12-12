import 'package:flutter/material.dart';
import 'package:furnito/home.dart';

void main() {
  runApp(MaterialApp(home: login()));
}

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            margin: EdgeInsets.all(20),
            child: TextField(
              cursorColor: Color.fromRGBO(3, 73, 73, 1),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(3, 73, 73, 1), width: 2)),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(160, 160, 160, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                hintText: 'E-mail',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(160, 160, 160, 1),
                    fontFamily: 'Abyssinica SIL'),
              ),
            ),
          )),
          Center(
              child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            margin: EdgeInsets.all(1),
            child: TextField(
              cursorColor: Color.fromRGBO(3, 73, 73, 1),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(3, 73, 73, 1), width: 2)),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(160, 160, 160, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(160, 160, 160, 1),
                    fontFamily: 'Abyssinica SIL'),
              ),
            ),
          )),
          Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Color.fromRGBO(3, 73, 73, 1)),
              child: TextButton(
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>home(),
                        ),
                      );
                    },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      primary: Color.fromRGBO(62, 220, 220, 1)))),
        ],
      ),
    );
  }
}
