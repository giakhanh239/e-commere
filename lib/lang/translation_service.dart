import 'package:flutter/cupertino.dart';
import 'package:flutter_app_e_commere_design/lang/translations/en_US.dart';
import 'package:get/get.dart';

///Mapping app language
class TranslationService extends Translations {
  // get device's locale
  static final Locale locale = _getLocaleFromLanguage(langCode: 'en');
  // fallback to en_US if device has different language
  static const Locale fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => <String, Map<String, String>>{
    'en_US': enUS,
  };

  // support lang code
  static final List<String> langCodes = [
    'en',
  ];

  // support locale
  static final List<Locale> locales = [
    Locale('en', 'US'),
  ];

  // update locale with lang code
  static void changeLocale(String langCode) {
    final locale = _getLocaleFromLanguage(langCode: langCode);
    Get.updateLocale(locale);
  }

  // get locale by lang code
  static Locale _getLocaleFromLanguage({String langCode}) {
    final String lang = langCode ?? Get.deviceLocale.languageCode;
    for (int i = 0; i < langCodes.length; i++) {
      if (lang == langCodes[i]) return locales[i];
    }
    return Get.locale;
  }
}