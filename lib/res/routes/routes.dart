import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/res/routes/routes_name.dart';
import 'package:mvvm_getx_flutter/views/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => const SplashScreen(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(milliseconds: 250)),
      ];
}
