import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/models/home/userlist_model.dart';
import 'package:mvvm_getx_flutter/repository/home_repository/home_repository.dart';
import '../../../data/response/status.dart';

class HomeViewModel extends GetxController {
  final _userApi = HomeRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final userList = UsersListModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value;
  void setUserList(UsersListModel value) => userList.value = value;
  void setError(String value) => error.value = value;

  void userListApi() {
    //setRxRequestStatus(Status.LOADING);
    _userApi.usersListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stactTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

  void refreshApi() {
    setRxRequestStatus(Status.LOADING);
    _userApi.usersListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stactTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }
}
