import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:mvvm_getx_flutter/res/colors/app_colors.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const GeneralExceptionWidget({super.key, required this.onPress});

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: height * .25,
            // ),
            const Icon(Icons.cloud_off, color: AppColors.redColor, size: 50),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                  child: Text(
                'general_exception'.tr,
                textAlign: TextAlign.center,
              )),
            ), // Padding
            SizedBox(
              height: height * .05,
            ),
            InkWell(
              onTap: widget.onPress,
              child: Container(
                height: 44,
                width: 160,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                    child: Text(
                  'retry'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                )),
              ), // Container
            ) // InkWell
          ],
        ),
      ),
    );
  }
}
