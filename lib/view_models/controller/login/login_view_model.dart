import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/models/login/user_model.dart';
import 'package:mvvm_getx_flutter/repository/login_repository/login_repository.dart';
import 'package:mvvm_getx_flutter/res/routes/routes_name.dart';
import 'package:mvvm_getx_flutter/utils/utils.dart';
import 'package:mvvm_getx_flutter/view_models/controller/user_preferences/user_preference_view_model.dart';

class LoginViewModel extends GetxController {
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;

  UserPreference userPreference = UserPreference();

  final _signApi = LoginRepository();

  final emailFocus = FocusNode().obs;
  final passFocus = FocusNode().obs;
  RxBool visibilityToggle = true.obs;
  RxBool loading = false.obs;

  void setVisibility(bool value) {
    visibilityToggle.value = value;
  }

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passController.value.text,
    };
    _signApi.loginApi(data).then((value) {
      loading.value = false;
      if (value['token'] != null) {
        userPreference.saveUser(USerModel.fromJson(value)).then((onValue) {
          Get.toNamed(RoutesName.homeView);
        }).onError((newError, stackTrace) {
          Utils.snackBar('Token not Saved', newError.toString());
        });
        Utils.snackBar('Login successfull', value['token'].toString());
      } else if (value['error'] != null) {
        Utils.snackBar('Login unsuccessfull', value['error'].toString());
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      if (kDebugMode) {
        print(error.toString());
      }
      Utils.snackBar('Login Unsuccessfull', error.toString());
    });
  }
}
