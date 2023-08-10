import 'package:flutter/material.dart';
import 'package:flutter_application_one/screens/home_screen.dart';
import 'package:get/get.dart';

//import 'screens/second_page.dart';
void main() {
  runApp( const GetMaterialApp(
    home:HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
