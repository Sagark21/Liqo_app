import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:liqo_app/Services/api_manager.dart';
import 'package:liqo_app/models/user_model.dart';
import 'package:liqo_app/pages/signUp.dart';
import 'package:liqo_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<SliderList> _sliderModel;
  late Future<HotDealList> _hotDealModel;
  late Future<HotDealList> _categoryModel;
  @override
  void initState() {
    _sliderModel = ApiManager().sliderImages();
    _hotDealModel = ApiManager().hotDealImages();
     _categoryModel = ApiManager().categoryImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
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
          Container(
            height: 10,
            color: Colors.orange.shade300,
          ),
          FutureBuilder<HotDealList>(
              future: _categoryModel,
              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();

                return Container(
                  height: 100,
                  
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.hotdeallist!.length,
                    itemBuilder: (BuildContext context, int itemIndex) =>
                        Padding(
                      padding: const EdgeInsets.only(left: 8,top: 8,bottom: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: NetworkImage(snapshot
                              .data!.hotdeallist![itemIndex].url
                              .toString()),
                          height: 200,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                );
              }),
          FutureBuilder<SliderList>(
              future: _sliderModel,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                }
                if (snapshot.hasData) {
                  return CarouselSlider.builder(
                    itemCount: snapshot.data!.sliderlist!.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(snapshot
                            .data!.sliderlist![itemIndex].url
                            .toString()),

                        // width: 1200,
                      ),
                    ),
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      height: 140,
                      viewportFraction: 1,
                      autoPlay: true,
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          FutureBuilder<HotDealList>(
              future: _hotDealModel,
              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();

                return Container(
                  height: 100,
                  color: Colors.orange.shade300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.hotdeallist!.length,
                    itemBuilder: (BuildContext context, int itemIndex) =>
                        Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image(
                          image: NetworkImage(snapshot
                              .data!.hotdeallist![itemIndex].url
                              .toString()),
                          height: 200,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    ));
  }

  Padding imageWidget(String s1, String s2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              s1,
            ),
            height: 60,
            width: 60,
          ),
          Text(
            s2,
            style: myStyle(10, Colors.grey, FontWeight.w500),
          )
        ],
      ),
    );
  }
}
