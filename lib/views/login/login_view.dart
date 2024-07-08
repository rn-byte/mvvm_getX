import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/res/colors/app_colors.dart';
import 'package:mvvm_getx_flutter/res/components/round_button.dart';
import '../../utils/utils.dart';
import '../../view_models/controller/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginViewModel loginViewModel = Get.put(LoginViewModel());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('login'.tr),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(
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
                          loginViewModel.setVisibility(
                              loginViewModel.visibilityToggle.value);
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
                ),
                const SizedBox(
                  height: 50,
                ),
                Obx(
                  () {
                    return loginViewModel.loading.value
                        ? const Center(child: CircularProgressIndicator())
                        : RoundButton(
                            width: 250,
                            buttonColor: AppColors.primaryButtonColor,
                            title: 'login'.tr,
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                loginViewModel.loginApi();
                                // Get.offAndToNamed('/SignupScreen');
                              }
                            },
                          );
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an Account?'.tr),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'signup'.tr,
                        style: const TextStyle(
                            color: AppColors.primaryButtonColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
