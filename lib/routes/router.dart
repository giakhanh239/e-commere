import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_e_commere_design/ui/screen/login/login_screen.dart';
import 'package:flutter_app_e_commere_design/ui/screen/register/register_screen.dart';
import 'package:flutter_app_e_commere_design/ui/screen/register_or_login/register_or_login_screen.dart';
import 'package:flutter_app_e_commere_design/ui/screen/start_screen/start_screen.dart';
import 'package:get/get.dart';

class RouteName{
  static const String start="/start";
  static const String loginOrRegister="/login_or_register";
  static const String login="/login";
  static const String register="/register";
}

class AppRouter{
  static Route<Widget> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.start:
        return GetPageRoute<StartScreen>(page: ()=> StartScreen());
      case RouteName.loginOrRegister:
        return GetPageRoute<RegisterOrLoginScreen>(page: ()=> RegisterOrLoginScreen());
      case RouteName.login:
        return GetPageRoute<LoginScreen>(page: ()=> LoginScreen());
      case RouteName.register:
        return GetPageRoute<RegisterScreen>(page: ()=> RegisterScreen());
      default:
        return GetPageRoute<Widget>(
          page: () => Scaffold(),
        );
    }
  }
}