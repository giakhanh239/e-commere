import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_e_commere_design/ui/widget/loading_dialog.dart';
import 'package:get/get.dart';

void showLoading() {
  Get.dialog<Widget>(LoadingDialog(colorDialog: Colors.red,));
}
void hideLoading(){
  if(Get.isDialogOpen) Get.back();
}