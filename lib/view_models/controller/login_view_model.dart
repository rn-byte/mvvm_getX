import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;

  final emailFocus = FocusNode().obs;
  final passFocus = FocusNode().obs;
  RxBool visibilityToggle = true.obs;

  void setVisibility(bool value) {
    visibilityToggle.value = value;
  }

  void isLogin() {}
}
