import 'package:flutter/material.dart';



myStyle(double size,[Color? colour, FontWeight? fw]){
  return TextStyle(
    fontSize: size,
    fontWeight: fw,
    color: colour,

  );
}
  String? name;
  String? email;
  int? mobile;
  String? password;

  Uri RegisterApi =Uri.parse("http://liqo.liqo.in/Product/register_customer");

 