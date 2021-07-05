import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget{
  final bool unable;
  final String content;
  final double height;
  final double width;
  final Color textColor;
  final Color buttonColor;
  final Function onTap;
  CommonButton({ this.unable=false,this.onTap,this.content, this.textColor, this.buttonColor,this.height=44,this.width=128});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: unable,
      child: InkWell(
        onTap:(){ onTap?.call();},
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
            color:  unable==false?buttonColor:Colors.grey,
            borderRadius: BorderRadius.circular(4.5),
          ),
        ),
      ),
    );
  }

}