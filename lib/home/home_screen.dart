import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/locale/locale_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          '1'.tr,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            ElevatedButton(
                onPressed: ()
                {
                  controller.changeLang('en');
                },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.red,
                )
              ),
                child:  Text(
                  '3'.tr,
                ),
            ),
            ElevatedButton(
                onPressed: (){
                  controller.changeLang('ar');
                },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.red,
                )
              ),
                child:  Text(
                  '2'.tr,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
