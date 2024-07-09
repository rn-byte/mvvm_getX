import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/view_models/controller/login/login_view_model.dart';

import '../../../res/colors/app_colors.dart';
import '../../../res/components/round_button.dart';

// ignore: must_be_immutable
class LoginButtonWidget extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final formKey;
  LoginViewModel loginViewModel = Get.put(LoginViewModel());
  LoginButtonWidget({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return loginViewModel.loading.value
            ? const Center(child: CircularProgressIndicator())
            : RoundButton(
                width: 250,
                buttonColor: AppColors.primaryButtonColor,
                title: 'login'.tr,
                onPress: () {
                  if (formKey.currentState!.validate()) {
                    loginViewModel.loginApi();
                    // Get.offAndToNamed('/SignupScreen');
                  }
                },
              );
      },
    );
  }
}
