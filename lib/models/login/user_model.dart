import 'dart:convert';

USerModel loginResponseModelFromJson(String str) =>
    USerModel.fromJson(json.decode(str));

String loginResponseModelToJson(USerModel data) => json.encode(data.toJson());

class USerModel {
  String? token;

  USerModel({
    required this.token,
  });

  factory USerModel.fromJson(Map<String, dynamic> json) => USerModel(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
