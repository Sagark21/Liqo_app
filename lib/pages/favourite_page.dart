import 'package:flutter/material.dart';
import 'package:liqo_app/Services/api_manager.dart';
import 'package:liqo_app/models/user_model.dart';

import 'package:liqo_app/utils/constants.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  late Future<HotDealList> _hotDealModel;
  @override
  void initState() {
     _hotDealModel =ApiManager().hotDealImages();
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {



    double imageHeight = 130;
    double imageWidth = MediaQuery.of(context).size.width / 3;
    

    
    

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
                        FutureBuilder<HotDealList>(
              future: _hotDealModel,
              builder: (context, snapshot) {
                if(!snapshot.hasData)
                  return Center(child: CircularProgressIndicator());

                return Container(
                  height: MediaQuery.of(context).size.height*0.7,
                  color: Colors.blue[100],
                  child:  GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                        ),
                   
                    itemCount: snapshot.data!.hotdeallist!.length,
                    itemBuilder: (BuildContext context, int itemIndex ) =>
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Image(
                              image: NetworkImage(snapshot
                                  .data!.hotdeallist![itemIndex].url
                                  .toString()),
                              height: 100,
                              width:100,
                            ),
                          ),
                        ),

                  ),
                );
              }),

                        
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
