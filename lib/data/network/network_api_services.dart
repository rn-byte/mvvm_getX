import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:mvvm_getx_flutter/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
import '../app_exception.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('No Internet Connection');
    } on RequesTimeoutException {
      throw RequesTimeoutException();
    } catch (e) {
      throw e.toString();
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, var data) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: data,
          )
          .timeout(
            const Duration(seconds: 10),
          );
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequesTimeoutException {
      throw RequesTimeoutException();
    } catch (e) {
      throw e.toString();
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
        throw FetchDataException();
    }
  }
}
