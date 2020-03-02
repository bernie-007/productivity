import 'package:flutter/material.dart';

class AppColor {
  final Color primaryColor;
  final Color greyColor;
  
  AppColor({
    this.primaryColor,
    this.greyColor
  });
}

AppColor colors = new AppColor(
  primaryColor: Color.fromRGBO(52, 178, 83, 1.0),
  greyColor: Colors.grey,
);