import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/res/colors/app_colors.dart';

class Utils {
  static void fieldFocusChange(
      FocusNode currentNode, FocusNode nextNode, BuildContext context) {
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blackColor,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.blueGrey,
      borderRadius: 20.0,
    );
  }
}
