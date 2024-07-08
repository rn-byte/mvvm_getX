import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/res/routes/routes_name.dart';
import 'package:mvvm_getx_flutter/views/home/home_view.dart';
import 'package:mvvm_getx_flutter/views/login/login_view.dart';
import 'package:mvvm_getx_flutter/views/splash/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => const SplashScreen(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(milliseconds: 250)),
        GetPage(
            name: RoutesName.loginView,
            page: () => const LoginView(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(milliseconds: 250)),
        GetPage(
            name: RoutesName.homeView,
            page: () => const HomeView(),
            transition: Transition.zoom,
            transitionDuration: const Duration(milliseconds: 250)),
      ];
}
