import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_e_commere_design/ui/screen/register/register_screen_controller.dart';
import 'package:flutter_app_e_commere_design/ui/screen/top_level.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_color.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_image.dart';
import 'package:flutter_app_e_commere_design/ui/widget/common_button.dart';
import 'package:flutter_app_e_commere_design/ui/widget/custom_text_feild_form.dart';
import 'package:flutter_app_e_commere_design/ui/widget/loading_dialog.dart';
import 'package:flutter_app_e_commere_design/ui/widget/social_login_button.dart';
import 'package:get/get.dart';
class RegisterScreen extends StatelessWidget {
  final RegisterScreenController _controller = Get.put(RegisterScreenController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
        body: Obx(
            ()=> Stack(
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 150,),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'letsRegister'.tr,
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
                          'haveAnAccount'.tr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      CustomTextFeildForm(
                        enable: !_controller.isLoading.value,
                        hintText: 'firstName'.tr,
                      ),
                      SizedBox(height: 10,),
                      CustomTextFeildForm(
                        enable: !_controller.isLoading.value,
                        hintText: 'lastName'.tr,
                      ),
                      SizedBox(height: 10,),
                      CustomTextFeildForm(
                        enable: !_controller.isLoading.value,
                        hintText: 'email'.tr,
                      ),
                      SizedBox(height: 10,),
                      CustomTextFeildForm(
                        enable: !_controller.isLoading.value,
                        hintText: 'password'.tr,
                      ),
                      SizedBox(height: 10,),
                      CommonButton(
                        onTap: (){
                          showLoading();
                          _controller.getRegisterData();
                        },
                        unable: _controller.isLoading.value,
                        width: 310,
                        content:'register'.tr,
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
              ),

            ],
          ),
        ),
      ),
    );;
  }
}

Widget _buildSocialLogin() {
  return Container(
    width: 310,
    child: Row(
      children: <Widget>[
        SocialLoginButton(
          image: Image.asset(AppImage.facebookIcon),
          text: 'facebook'.tr,
        ),
        Expanded(child: SizedBox()),
        SocialLoginButton(
          image: Image.asset(AppImage.gmailIcon),
          text: 'gmail'.tr,
        )
      ],
    ),
  );
}
