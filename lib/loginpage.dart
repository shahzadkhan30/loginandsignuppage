import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterdemo/homepage.dart';
import 'package:flutterdemo/signuppage.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  String email;
  String password;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
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
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter valid mail id as abc@gmail.com',
              ),
              onChanged: (value){
                setState(() {
                  email=value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your secure password'
              ),
              onChanged: (value){
                setState(() {
                  password=value;
                });
              },
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => homepage()));
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.greenAccent, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
               onPressed: () {
               Navigator.push(
                   context, MaterialPageRoute(builder: (_) => signup()));
              },
              child: Text(
                'SignUp',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          FlatButton(
            onPressed: (){
              //TODO FORGOT PASSWORD SCREEN GOES HERE
            },
            child: Text(
              'Forgot Password',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),

        ],
      ),
    );
  }
}
