import 'dart:convert';

import 'package:liqo_app/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:liqo_app/utils/constants.dart';


class ApiManager{
 Future<SignUpUserModel> signUp(String? name, String? email,String? mobile,  String? password) async {
     var signupUserModel;
    try{final response = await http.post(Uri.parse(api+"register_customer"),body:{
      "name":name,
      "email":email,
      "mobile": mobile,
      "password": password,
    });
  
    if(response.statusCode==200){
      var jsonString = response.body;
      print(jsonString);
        var jsonMap = json.decode(jsonString);

        signupUserModel =  SignUpUserModel.fromJson(jsonMap);
      }
      
    } catch (e) {
      print(e);
    }

    return signupUserModel;
  
    }

Future<LoginUserModel> Login(String? email, String? password) async {
     var loginUserModel;
    try{final response = await http.post(Uri.parse(api+"customer_login"),body:{
      
      "email":email,
     
      "password": password,
    });
  
    if(response.statusCode==200){
      var jsonString = response.body;
      print(jsonString);
        var jsonMap = json.decode(jsonString);

        loginUserModel =  LoginUserModel.fromJson(jsonMap);
      }
      
    } catch (e) {
      print(e);
    }
    
    return loginUserModel;
  
    }




Future<SliderList> sliderImages() async{
 var client = http.Client();
    var SliderImage;

    try {
      var response = await client.get(Uri.parse(api+"get_slider_data"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        SliderImage = SliderList.fromJson(jsonMap);
      }
    } catch (Exception) {
      return SliderImage;
    }

    return SliderImage;
  }


Future<HotDealList> hotDealImages() async{
 var client = http.Client();
    var HotDealImage;

    try {
      var response = await client.get(Uri.parse(api +"get_hot_deals_data"));
       print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        HotDealImage = HotDealList.fromJson(jsonMap);
      }
    } catch (Exception) {
      return HotDealImage;
    }

    return HotDealImage;
  }

  

Future<HotDealList> categoryImages() async{
 var client = http.Client();
    var HotDealImage;

    try {
      var response = await client.get(Uri.parse(api +"get_main_data"));
       print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        HotDealImage = HotDealList.fromJson(jsonMap);
      }
    } catch (Exception) {
      return HotDealImage;
    }

    return HotDealImage;
  }

  
}


  
