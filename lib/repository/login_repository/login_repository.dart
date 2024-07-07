import 'package:mvvm_getx_flutter/data/network/network_api_services.dart';
import 'package:mvvm_getx_flutter/res/app_url/app_url.dart';

class LoginRepository {
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = await _apiServices
        .getPostApiResponse(AppUrl.loginUrlEndpoint, data)
        .timeout(
          const Duration(seconds: 10),
        );
    return response;
  }
}
