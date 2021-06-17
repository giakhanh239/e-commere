import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_color.dart';
import 'package:flutter_app_e_commere_design/ui/theme/app_style.dart';

class CustomTextFeildForm extends StatefulWidget {
  final String hintText;
  final TextEditingController textEditingController;

  const CustomTextFeildForm({Key key, this.hintText, this.textEditingController}) : super(key: key);

  @override
  _CustomTextFeildFormState createState() => _CustomTextFeildFormState();
}

class _CustomTextFeildFormState extends State<CustomTextFeildForm> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 310,
      decoration: BoxDecoration(
        color: AppColors.subButtonColors,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: widget.textEditingController ?? TextEditingController(),
        style: AppStyle.TEXT_FORM,
        decoration: InputDecoration(
          hintStyle: AppStyle.HINT_TEXT,
          hintText: widget.hintText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(20),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ) ,
    );
  }
}
