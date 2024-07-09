import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/view_models/controller/login/login_view_model.dart';

// ignore: must_be_immutable
class InputPasswordWidget extends StatelessWidget {
  LoginViewModel loginViewModel = Get.put(LoginViewModel());
  InputPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        controller: loginViewModel.passController.value,
        obscureText: loginViewModel.visibilityToggle.value,
        focusNode: loginViewModel.passFocus.value,
        decoration: InputDecoration(
          hintText: 'pass'.tr,
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: GestureDetector(
            onTap: () {
              loginViewModel.visibilityToggle.value =
                  !loginViewModel.visibilityToggle.value;
              loginViewModel
                  .setVisibility(loginViewModel.visibilityToggle.value);
            },
            child: Icon(
              loginViewModel.visibilityToggle.value
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
          ),
          label: Text('pass'.tr),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
        validator: (value) {
          if (value.toString().isEmpty) {
            return 'pass'.tr;
          } else {
            return null;
          }
        },
      ),
    );
  }
}
