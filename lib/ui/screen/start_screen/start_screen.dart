import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_e_commere_design/ui/screen/register_or_login/register_or_login_screen.dart';
import 'package:flutter_app_e_commere_design/ui/screen/start_screen/widget/next_button.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_color.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_image.dart';
import 'package:flutter_app_e_commere_design/ui/widget/swiper/app_swiper.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: AppSwiper()
          ),
          Expanded(child: SizedBox()),
          Text(
            "The Right Address For Shopping Anyday",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              'It is now very easy to reach the best quality among all the products on the internet!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 30,),
          NextButton(
            onTap: (){
              Get.to(RegisterOrLoginScreen());
            },
            content: "Next",
            textColor: AppColors.commonButtonColor,
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom + 60,
          ),

        ],
      ),
    );
  }
}
