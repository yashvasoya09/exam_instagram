// To parse this JSON data, do
//
//     final apiModel = apiModelFromJson(jsonString);

import 'dart:convert';

ApiModel apiModelFromJson(String str) => ApiModel.fromJson(json.decode(str));

String apiModelToJson(ApiModel data) => json.encode(data.toJson());
class ApiModel {
  static final Apimodel = ApiModel._();
  ApiModel._();

  String? status;
  int? result;

  ApiModel({
    this.status,
    this.result,
  });

  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
    status: json["status"],
    result: json["result"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": result,
  };
}
