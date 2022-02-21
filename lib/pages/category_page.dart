import 'package:flutter/material.dart';
import 'package:liqo_app/utils/constants.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("images/AC Icon.png",),height: 80,width: 80,),
                      Text("Air Conditioners",style: myStyle(13,Colors.grey,FontWeight.w500),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("images/Laptop Icon.png",),height: 80,width: 80,),
                      Text("Laptops",style: myStyle(13,Colors.grey,FontWeight.w500),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("images/Refrigerator Icon.png",),height: 80,width: 80,),
                      Text("Refrigerators",style: myStyle(13,Colors.grey,FontWeight.w500),)
                    ],
                  ),
                
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("images/Washing Machines Icon.png",),height: 80,width: 80,),
                      Text("Washing Machines",style: myStyle(13,Colors.grey,FontWeight.w500),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("images/Speaker Icon.png",),height: 80,width: 80,),
                      Text("Speakers",style: myStyle(13,Colors.grey,FontWeight.w500),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("images/LED Icon.png",),height: 80,width: 80,),
                      Text("LED TVS",style: myStyle(13,Colors.grey,FontWeight.w500),)
                    ],
                  ),
                
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
