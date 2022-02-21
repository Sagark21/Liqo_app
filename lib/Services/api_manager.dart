import 'dart:convert';

import 'package:liqo_app/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:liqo_app/utils/constants.dart';


class ApiManager{
 Future<UserModel> signUp(String? name, String? email,  String? password) async {
     var userModel;
    try{final response = await http.post(RegisterApi,body:{
      "name":name,
      "email":email,
      "mobile": "7894561233",
      "password": password,
    });
   print(response.statusCode);
    if(response.statusCode==201){
      var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        userModel =  UserModel.fromJson(jsonMap);
      }
      
    } catch (e) {
      print(e);
    }

    return userModel;
  
    }
  }
