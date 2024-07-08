import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/res/routes/routes_name.dart';
import 'package:mvvm_getx_flutter/view_models/controller/user_preferences/user_preference_view_model.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();
  void isLogin() {
    userPreference.getUser().then((value) {
      if (value.token != null) {
        if (kDebugMode) {
          print(value.token.toString());
        }
        Timer(
          const Duration(seconds: 2),
          () {
            Get.toNamed(RoutesName.homeView);
          },
        );
      } else {
        if (kDebugMode) {
          print(value.token.toString());
        }
        Timer(
          const Duration(seconds: 2),
          () {
            Get.toNamed(RoutesName.loginView);
          },
        );
      }
    }).onError((error, stackTrace) {
      debugPrint(error.toString());
    });
  }
}
