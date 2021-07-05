import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_color.dart';

class NextButton extends StatelessWidget {
  final String content;
  final double height;
  final double width;
  final Color textColor;
  final Color buttonColor;
  final Function onTap;

  NextButton(
      {this.onTap,
      this.content,
      this.textColor,
      this.buttonColor,
      this.height = 34,
      this.width = 100});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: Text(
            content ?? "",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w700, color: textColor),
          ),
        ),
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(color: AppColors.commonButtonColor, width: 2.0),
          borderRadius: BorderRadius.circular(4.5),
        ),
      ),
    );
  }
}
