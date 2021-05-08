import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('signUp Page'),
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
                  labelText: 'First Name',
                  hintText: 'Enter your first name'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'last Name',
                  hintText: 'Enter your Last name'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid mail id as abc@gmail.com'
              ),
              onChanged: (value){
                setState(() {
                  email =value;
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
                  labelText: 'chose Password',
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
                color: Colors.greenAccent, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () async {
                try{
                  final newuser =await _auth.createUserWithEmailAndPassword(email: email, password: password);
                  if(newuser !=null){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => signup()));
                  }
                }
                catch(e)
                {
                  print(e);
                }
              },
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
        Row(
          children: [
            FlatButton(
              onPressed: (){
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Already have an account click here',
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ),
            Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}
