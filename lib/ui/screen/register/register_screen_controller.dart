import 'package:flutter/cupertino.dart';
import 'package:flutter_app_e_commere_design/ui/screen/top_level.dart';
import 'package:get/get.dart';

class RegisterScreenController extends GetxController{
  RxBool isLoading=false.obs;

  Future<void> getRegisterData(){
    this.isLoading.value=true;
    Future.delayed(const Duration(seconds: 2),(){
      this.isLoading.value=false;
      hideLoading();
    });

  }
}