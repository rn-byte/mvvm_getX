import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/colors/app_colors.dart';

class LanguageTranslateWidget extends StatelessWidget {
  const LanguageTranslateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Get.updateLocale(const Locale('us', 'US'));
          },
          child: Text(
            'ENG'.tr,
            style: const TextStyle(
                decoration: TextDecoration.underline,
                color: AppColors.primaryButtonColor),
          ),
        ),
        const Text(' / '),
        GestureDetector(
          onTap: () {
            Get.updateLocale(const Locale('np', 'NEP'));
          },
          child: Text('NEP'.tr,
              style: const TextStyle(
                  decoration: TextDecoration.underline,
                  color: AppColors.primaryButtonColor)),
        ),
      ],
    );
  }
}
