import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/views/login/widgets/donot_have_account_widget.dart';
import 'package:mvvm_getx_flutter/views/login/widgets/input_password_widget.dart';
import 'package:mvvm_getx_flutter/views/login/widgets/language_translate_widget.dart';
import 'package:mvvm_getx_flutter/views/login/widgets/login_button_widget.dart';
import 'widgets/input_email_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                InputEmailWidget(),
                const SizedBox(
                  height: 20,
                ),
                InputPasswordWidget(),
                const SizedBox(
                  height: 50,
                ),
                LoginButtonWidget(
                  formKey: _formKey,
                ),
                const SizedBox(height: 20),
                const DonotHaveAccountWidget(),
                const LanguageTranslateWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
