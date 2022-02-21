import 'package:liqo_app/Services/api_manager.dart';
import 'package:liqo_app/models/user_model.dart';
import 'package:liqo_app/utils/constants.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var emailIDController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  late UserModel _userModel;
  ApiManager apiManager =ApiManager();

  

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
              Text("Get Started with ",
                  style: myStyle(30, Color(0xffFF8F35), FontWeight.w600)),
              SizedBox(
                height: 20,
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
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Username',
                      labelStyle: myStyle(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: emailIDController,
                  keyboardType: TextInputType.emailAddress,
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
                  controller: mobileController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Mobile',
                      labelStyle: myStyle(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.phone)),
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
                onTap: () async => {
                  _userModel = await apiManager.signUp(nameController.toString(), emailIDController.toString(), passwordController.toString()),
                print(_userModel.name)
                },
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFF8F35),
                    ),
                    child: Center(
                      child: Text(
                        'Register',
                        style: myStyle(20, Colors.black, FontWeight.w700),
                      ),
                    )),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have Account?",
                    style: myStyle(20),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage())),
                      child: Text(
                        "Login",
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
