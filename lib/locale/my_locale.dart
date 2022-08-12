import 'package:get/get.dart';

class MyLocale implements Translations
{
  @override
  Map<String, Map<String, String>> get keys => {
    'ar' : {
      '1' : 'الصفحه الرئيسية',
      '2' : 'اللغة العربية',
      '3' : 'اللغة الانجليزية',
    },
    'en' : {
      '1': 'Home Page',
      '2' : 'Arabic',
      '3' : 'English',
    },
  };

}