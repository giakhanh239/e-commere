import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget{
  final Color colorDialog;

  const LoadingDialog({Key key, this.colorDialog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return WillPopScope(
      onWillPop: () async => true,
        child: Center(
          child: CircularProgressIndicator(color: colorDialog,),
          // child: SpinKitCircle(
          //   color: colorDialog,
          // ),
        ),
    );
  }

}