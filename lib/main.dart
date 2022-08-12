import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/home/home_screen.dart';
import 'package:localization/locale/cache_helper.dart';
import 'package:localization/locale/locale_controller.dart';
import 'package:localization/locale/my_locale.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  MyLocaleController controller = Get.put(MyLocaleController());
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      locale: controller.initLang,
      translations: MyLocale(),
    );
  }
}

