import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_e_commere_design/ui/screen/login/login_screen.dart';
import 'package:flutter_app_e_commere_design/ui/screen/register/register_screen.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_color.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_image.dart';
import 'package:flutter_app_e_commere_design/ui/widget/common_button.dart';
import 'package:get/get.dart';
class RegisterOrLoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImage.backGroundImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Text(
                    "The Right Address For Shopping Anyday",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                      'It is now very easy to reach the best quality among all the products on the internet!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,

                      ),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: <Widget>[
                      CommonButton(
                        onTap: (){
                          Get.to(RegisterScreen());
                        },
                        content: "Register",
                        buttonColor: AppColors.commonButtonColor,
                        textColor: Colors.white,
                      ),
                      CommonButton(
                        onTap: (){
                          Get.to(LoginScreen());
                        },
                        content: "Log In",
                        textColor: Colors.black,
                        buttonColor: AppColors.subButtonColors,
                      ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  
}