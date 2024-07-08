import 'package:mvvm_getx_flutter/data/network/network_api_services.dart';
import 'package:mvvm_getx_flutter/models/home/userlist_model.dart';
import 'package:mvvm_getx_flutter/res/app_url/app_url.dart';

class HomeRepository {
  final _apiServices = NetworkApiServices();

  Future<UsersListModel> usersListApi() async {
    dynamic response = await _apiServices
        .getGetApiResponse(AppUrl.userListApiUrl)
        .timeout(const Duration(seconds: 10));

    return UsersListModel.fromJson(response);
  }
}
