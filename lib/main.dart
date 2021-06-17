import 'package:flutter/material.dart';
import 'package:flutter_app_e_commere_design/ui/screen/register_or_login/register_or_login_screen.dart';
import 'package:flutter_app_e_commere_design/ui/screen/start_screen/start_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     home: StartScreen() ,
   );
  }
}