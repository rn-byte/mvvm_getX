import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/data/response/status.dart';
import 'package:mvvm_getx_flutter/res/components/internet_exception_widgets.dart';
import 'package:mvvm_getx_flutter/res/routes/routes_name.dart';
import 'package:mvvm_getx_flutter/view_models/controller/home/home_view_model.dart';
import 'package:mvvm_getx_flutter/view_models/controller/user_preferences/user_preference_view_model.dart';
import 'package:mvvm_getx_flutter/views/home/widgets/userlist_widget.dart';

import '../../res/components/general_exception_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreference userPreference = UserPreference();
  HomeViewModel homeViewModel = Get.put(HomeViewModel());
  @override
  void initState() {
    homeViewModel.userListApi();
    super.initState();
  }

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
      body: Obx(
        () {
          switch (homeViewModel.rxRequestStatus.value) {
            case Status.LOADING:
              return const Center(child: CircularProgressIndicator());

            case Status.ERROR:
              if (homeViewModel.error.value == ' No Internet Connection') {
                return InternetExceptionWidgets(
                  onPress: () {
                    homeViewModel.refreshApi();
                  },
                );
              } else {
                return GeneralExceptionWidget(
                  onPress: () {
                    homeViewModel.refreshApi();
                  },
                );
              }

            case Status.COMPLETED:
              return const UserlistWidget();
          }
        },
      ),
    );
  }
}
