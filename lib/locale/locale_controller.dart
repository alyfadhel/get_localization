import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/locale/cache_helper.dart';

class MyLocaleController extends GetxController
{

  Locale initLang = CacheHelper.getDate(key: 'lang') == 'ar' ?
  const Locale('ar') : const Locale('en');


  void changeLang(String codeLang)
  {
    Locale locale = Locale(codeLang);
    CacheHelper.saveData(key: 'lang', value: codeLang);
    Get.updateLocale(locale);
  }
}