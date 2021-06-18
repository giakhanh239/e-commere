import 'package:flutter/material.dart';
import 'package:flutter_app_e_commere_design/configurations/environments.dart';
import 'package:flutter_app_e_commere_design/lang/translation_service.dart';
import 'package:flutter_app_e_commere_design/routes/router.dart';
import 'package:get/get.dart';


class MyApp extends StatelessWidget{
  final Environment environment;
  const MyApp({Key key, this.environment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     onGenerateRoute: AppRouter.generateRoute,
     initialRoute: RouteName.start ,
     locale: TranslationService.locale,
     fallbackLocale: TranslationService.fallbackLocale,
     translations: TranslationService(),
   );
  }
}