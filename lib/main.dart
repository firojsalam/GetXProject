import 'package:flutter/material.dart';
import 'package:get_x_project/page/home_page.dart';
import 'package:get/get.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home: HomePage(),
    );
  }
}
