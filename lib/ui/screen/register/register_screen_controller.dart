import 'package:get/get.dart';

class RegisterScreenController extends GetxController{
  RxBool isLoading=false.obs;

  Future<void> registerAPI(){
    this.isLoading.value=true;
    Future.delayed(const Duration(seconds: 2),(){
      this.isLoading.value=false;
    });
  }
}