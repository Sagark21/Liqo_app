import 'package:flutter/material.dart';
import 'package:liqo_app/utils/constants.dart';

class MorePage extends StatefulWidget {
  const MorePage({ Key? key }) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
              child: const Image(
                image: AssetImage("images/Header Logo.png"),
                alignment: Alignment.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Shop by Category",
                textAlign: TextAlign.start,
                style: myStyle(15, Colors.black, FontWeight.bold),
              ),
            ),]),)

      
    );
  }
}