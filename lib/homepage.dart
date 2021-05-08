import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Column(
        children: [
          Center(
            child:   Container(
              height: 150.0,
              width: 190.0,
              padding: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              child: Center(
                  child: Image.network("https://www.freeiconspng.com/uploads/user-login-icon-29.png")
              ),
            ),
          ),

        ],
      ),
    );
  }
}
