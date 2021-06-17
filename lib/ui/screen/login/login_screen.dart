import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_color.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_image.dart';
import 'package:flutter_app_e_commere_design/ui/widget/common_button.dart';
import 'package:flutter_app_e_commere_design/ui/widget/custom_text_feild_form.dart';
import 'package:flutter_app_e_commere_design/ui/widget/social_login_button.dart';

class LoginScreen extends StatelessWidget {
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
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 150,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Let's Register",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Do you have an account? Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  CustomTextFeildForm(
                    hintText: "Email",
                  ),
                  SizedBox(height: 10,),
                  CustomTextFeildForm(
                    hintText: "Password",
                  ),
                  SizedBox(height: 30,),
                  CommonButton(
                    width: 310,
                    content:"Login",
                    buttonColor: AppColors.commonButtonColor,
                    textColor: Colors.white,
                  ),
                  SizedBox(height: 10,),
                  _buildSocialLogin(),
                  SizedBox(
                    height: MediaQuery.of(context).padding.bottom + 20,
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );;
  }
}

Widget _buildSocialLogin() {
  return Row(
    children: <Widget>[
      SocialLoginButton(
        image: Image.asset(AppImage.facebookIcon),
        text: "Facebook",
      ),
      Expanded(child: SizedBox()),
      SocialLoginButton(
        image: Image.asset(AppImage.gmailIcon),
        text: "Gmail",
      )
    ],
  );
}
