import 'dart:async';

import 'package:get/get.dart';

class SplashServices {
  void isLogin() {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.offAndToNamed('/loginView');
      },
    );
  }
}
