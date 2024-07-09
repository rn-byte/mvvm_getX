import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../res/colors/app_colors.dart';

class DonotHaveAccountWidget extends StatelessWidget {
  const DonotHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an Account?'.tr),
        GestureDetector(
          onTap: () {},
          child: Text(
            'signup'.tr,
            style: const TextStyle(color: AppColors.primaryButtonColor),
          ),
        ),
      ],
    );
  }
}
