import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mvvm_getx_flutter/res/asset/image_assets.dart';
import 'package:mvvm_getx_flutter/res/components/internet_exception_widgets.dart';

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
        child: InternetExceptionWidgets(
          onPress: () {},
        ),
      ),
    );
  }
}
