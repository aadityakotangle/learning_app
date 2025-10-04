import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextFeildStyle(){
    return TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Poppins');
  }

  static semiBoldTextFeildStyle() {
    return  TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');

  }

  static HeadlineTextFeildStyle(){
    return  TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins');
  }
}