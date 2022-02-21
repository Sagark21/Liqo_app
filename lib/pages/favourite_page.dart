import 'package:flutter/material.dart';

import 'package:liqo_app/utils/constants.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {



    double imageHeight = 130;
    double imageWidth = MediaQuery.of(context).size.width / 3;


    Row ImageElement(String s1, String s2, String s3) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                s1,
                height: imageHeight,
                width: imageWidth,
              )),
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(s2, height: imageHeight, width: imageWidth)),
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(s3, height: imageHeight, width: imageWidth))
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
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
            SizedBox(
              height: 15,
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Offers",
                            style: myStyle(20, Colors.black, FontWeight.w600),
                          ),
                        ),
                        ImageElement(
                            "images/455L Ref.png",
                            "images/Washing Machine Exchange Offer.png",
                            "images/Washing Machine Exchange Offer-1.png"),
                            ImageElement(
                            "images/Washing Machine Exchange Offer-2.png",
                            "images/Washing Machine Exchange Offer-3.png",
                            "images/Washing Machine Exchange Offer-4.png"),
                              ImageElement(
                            "images/Washing Machine Exchange Offer-5.png",
                            "images/Washing Machine Exchange Offer-6.png",
                            "images/Washing Machine Exchange Offer-7.png"),
                              ImageElement(
                            "images/Washing Machine Exchange Offer-8.png",
                            "images/Washing Machine Exchange Offer-9.png",
                            "images/Washing Machine Exchange Offer-10.png"),
                            ImageElement(
                            "images/Washing Machine Exchange Offer-11.png",
                            "images/Washing Machine Exchange Offer-12.png",
                            "images/Washing Machine Exchange Offer-13.png"),
                        
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
