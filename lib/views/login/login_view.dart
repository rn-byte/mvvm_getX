import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // LoginController loginController = Get.put(LoginController());

  FocusNode emailFocus = FocusNode();
  FocusNode passFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                // controller: loginController.emailController.value,
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocus,
                onFieldSubmitted: (value) {
                  // Utils.fieldFocusChange(context, emailFocus, passFocus);
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your Email',
                  prefixIcon: Icon(Icons.person_3_outlined),
                  label: Text('Enter your Email'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => TextFormField(
                  // controller: loginController.passController.value,
                  // obscureText: loginController.visibilityToggle.value,
                  focusNode: passFocus,
                  decoration: InputDecoration(
                    hintText: 'Enter your Password',
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        //  loginController.visibilityToggle.value =
                        // //     !loginController.visibilityToggle.value;
                        // loginController.setVisibility(
                        //     loginController.visibilityToggle.value);
                      },
                      child: Icon(
                          // loginController.visibilityToggle.value
                          //?
                          Icons.visibility_off
                          //: Icons.visibility,
                          ),
                    ),
                    label: const Text('Enter your Password'),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Obx(
                () {
                  return SizedBox(
                    height: 50,
                    width: 280,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.blue[200])),
                      onPressed: () {
                        // loginController.loginApi();
                        Get.toNamed('/');
                      },
                      child:
                          // loginController.loading.value
                          //     ? const Center(child: CircularProgressIndicator())
                          //     :
                          const Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an Account? '),
                  GestureDetector(
                    onTap: () {
                      Get.offAndToNamed('/SignupScreen');
                    },
                    child: Text(
                      'Signup ',
                      style: TextStyle(color: Colors.blue[500]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
