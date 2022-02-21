import 'package:flutter/material.dart';
import 'package:liqo_app/pages/signUp.dart';
import 'package:liqo_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[300],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "India's No. 1 Discounted Open Box Electronics Store",
                  style: myStyle(12, Colors.white, FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                child: const Image(
                  image: AssetImage("images/Header Logo.png"),
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Flexible(child: Container(
                color: Colors.white,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    imageWidget("images/AC Icon.png","Air Conditioners"),
                    imageWidget("images/Laptop Icon.png","Laptops"),
                    imageWidget("images/Refrigerator Icon.png","Refrigerators"),
                    imageWidget("images/Washing Machines Icon.png","Washing Machines"),
                    imageWidget("images/Speaker Icon.png","Speakers"),
                    imageWidget("images/LED Icon.png","LED TVS"),
                  ],
                ),
              )),
            ),
            Image.asset('images/Washing Machine Exchange Offer-9.png',height: 400, width: 400,)
            
            ],),)
    );
  }

  Padding imageWidget(String s1, String s2) {
    return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage(s1,),height: 60,width: 60,),
                      Text(s2,style: myStyle(10,Colors.grey,FontWeight.w500),)
                    ],
                ),
                  );
  }
}