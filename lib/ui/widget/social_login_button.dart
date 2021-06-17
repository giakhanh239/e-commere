import 'package:flutter/cupertino.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_color.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_image.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_style.dart';

class SocialLoginButton extends StatelessWidget {
  final Widget image;
  final String text;

  const SocialLoginButton({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 144,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.hinTextColor,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            image,
            SizedBox(width: 12,),
            Text(
              text,
              style: AppStyle.SOCIAL_TEXT_LOGIN,
            )
          ],
        ),
      ),
    );
  }
}
