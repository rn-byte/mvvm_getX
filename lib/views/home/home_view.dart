import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/res/routes/routes_name.dart';
import 'package:mvvm_getx_flutter/view_models/controller/user_preferences/user_preference_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreference userPreference = UserPreference();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dashboard'.tr),
        centerTitle: true,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
                onTap: () {
                  userPreference.removeUser().then((value) {
                    Get.offAndToNamed(RoutesName.loginView);
                  });
                },
                child: const Icon(Icons.logout_rounded)),
          ),
        ],
      ),
      body: Center(
        child: Text('This is Home Screen'.tr),
      ),
    );
  }
}
