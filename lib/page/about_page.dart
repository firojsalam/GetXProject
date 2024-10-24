import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/page/home_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
         Get.to(HomePage(),);
        }, child: Text("Go to Home Page"),
        ),
      ),
      
    );
  }
}
