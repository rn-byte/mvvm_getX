import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/view_models/controller/login/login_view_model.dart';

import '../../../utils/utils.dart';

// ignore: must_be_immutable
class InputEmailWidget extends StatelessWidget {
  LoginViewModel loginViewModel = Get.put(LoginViewModel());
  InputEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginViewModel.emailController.value,
      keyboardType: TextInputType.emailAddress,
      focusNode: loginViewModel.emailFocus.value,
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(loginViewModel.emailFocus.value,
            loginViewModel.passFocus.value, context);
      },
      decoration: InputDecoration(
        hintText: 'email'.tr,
        prefixIcon: const Icon(Icons.person_3_outlined),
        label: Text('email'.tr),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
      validator: (value) {
        if (value.toString().isEmpty) {
          return 'email'.tr;
        } else {
          return null;
        }
      },
    );
  }
}
