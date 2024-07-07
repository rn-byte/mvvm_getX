import 'package:flutter/material.dart';
import 'package:mvvm_getx_flutter/res/asset/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage(ImageAssets.splashScreen)),
      ),
    );
  }
}
