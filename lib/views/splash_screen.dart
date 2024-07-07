import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mvvm_getx_flutter/res/asset/image_assets.dart';
import 'package:mvvm_getx_flutter/res/colors/app_colors.dart';
// ignore: unused_import
import 'package:mvvm_getx_flutter/res/components/internet_exception_widgets.dart';
import 'package:mvvm_getx_flutter/res/components/round_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundButton(
              onPress: () {},
              title: 'Login',
              width: 200,
              buttonColor: AppColors.redColor,
              loading: false,
            ),
            const SizedBox(
              height: 20,
            ),
            RoundButton(
              onPress: () {},
              title: 'Signup',
              width: 250,
              height: 40,
              buttonColor: AppColors.primaryButtonColor,
              loading: false,
            ),
            const SizedBox(
              height: 20,
            ),
            RoundButton(
              onPress: () {},
              title: 'Apply',
              width: 350,
              height: 50,
              buttonColor: AppColors.secondaryButtonColor,
              loading: true,
            )
          ],
        ),
      ),
    );
  }
}
