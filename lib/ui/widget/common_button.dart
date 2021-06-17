import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget{
  final String content;
  final double height;
  final double width;
  final Color textColor;
  final Color buttonColor;
  final Function onTap;
  CommonButton({ this.onTap,this.content, this.textColor, this.buttonColor,this.height=44,this.width=128});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: height,
          width: width,
        child: Center(
          child: Text(
              content,
            style: TextStyle(
              color: textColor
            ),
          ),
        ),
        decoration: BoxDecoration(
          color:  buttonColor,
          borderRadius: BorderRadius.circular(4.5),
        ),
      ),
    );
  }

}