import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_project/controller/app_controller.dart';
import 'package:get_x_project/page/about_page.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("GetX Project", style: TextStyle(color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),
        ),
      ),
      
      
      body: SafeArea(child: Padding(padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Get.snackbar("Downloading Completed",
                      "Your Song is Downloading");
                }, 
                  child: Text("Snack Bar"),),
              ],
            ),
            ElevatedButton(onPressed: (){
              Get.defaultDialog(
                title: "ALERT",
                content: Column(
                  children: [
                    Text("Do you want to delete"),
                  ],
                ),
              );
            }, child: Text("Dialogue Box"),),
            ElevatedButton(onPressed: (){
              Get.offAll(AboutPage(),
              );
            }, child: Text("Go about Page"),
            ),

            InkWell(
              onTap: (){
                appController.increase();
              },
              child: Icon(Icons.add,
              size: 70,
            ),
            ),
            Obx(()=>  Text(
          appController.n.toString(),
        style: TextStyle(fontSize: 70),
      ),
    ),
            InkWell(
              onTap: (){
                appController.decrease();
              },
              child: Icon(Icons.arrow_back_ios,
                size: 70,
              ),
            ),


            
          ],
        ),
      ),
      ),
    );
  }
}