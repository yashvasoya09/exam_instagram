import 'dart:convert';

import 'package:exam_instagram/screen/api_model/api_model.dart';
import 'package:http/http.dart' as http;

class apiHelper {
  static final api_Helper = apiHelper._();

  apiHelper._();

  Future<ApiModel> getDataFromSearch() async {
    String link =
        'https://instagram174.p.rapidapi.com/api/v1/user/yashvasoya09/id';
    var responce = await http.get(Uri.parse(link), headers: {
      'X-RapidAPI-Key': '7586c629f9mshef97ea44d4f648bp1f20d0jsn90c1c827dd3f',
      'X-RapidAPI-Host': 'instagram174.p.rapidapi.com'
    });
    var json = jsonDecode(responce.body);
    ApiModel model =  await ApiModel.fromJson(json);
    return model;
  }
}
