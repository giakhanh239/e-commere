import 'package:get/get.dart';

class LoginScreenController extends GetxController{
  RxBool isLoading=false.obs;

  Future<void> loginAPI(){
    this.isLoading.value=true;
    Future.delayed(const Duration(seconds: 2),(){
      this.isLoading.value=false;
    });


  }
}