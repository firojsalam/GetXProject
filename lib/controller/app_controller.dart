import 'package:get/get.dart';
class AppController extends GetxController{
  RxInt n= 2.obs;
  void increase (){
    n++;
  }
  void decrease (){
    n--;
    print(n);
  }

}