import 'package:liqo_app/pages/homepage.dart';
import 'package:liqo_app/pages/nav_bar.dart';
import 'package:liqo_app/utils/constants.dart';
import 'package:flutter/material.dart';


import 'signUp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailIDController = TextEditingController();
  var passwordController = TextEditingController();
  

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to",
                  style: myStyle(30, Color(0xffFF8F35), FontWeight.w700)),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 64,
                width: 64,
                child: Image.asset("images/Splash Logo.png"),
              ),
              
              SizedBox(height: 20),
              
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailIDController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Email',
                      labelStyle: myStyle(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.email)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Password',
                      labelStyle: myStyle(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () =>  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavBar())),
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFF8F35),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: myStyle(20, Colors.black, FontWeight.w700),
                      ),
                    )),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have Account?",
                    style: myStyle(20),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage())),
                      child: Text(
                        "Register!",
                        style: myStyle(20, Colors.purple, FontWeight.w700),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
