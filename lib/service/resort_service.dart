import 'dart:io';

import 'package:dio/dio.dart';
import 'package:resort_exam/models/resort_model.dart';

class ResortService {
  Future<List<ResortData>> getResort() async {
    Response res = await Dio().get(
        Platform.isAndroid ? "http://10.0.2.2:3000/resort" : "http://localhost:3000/resort");
  

    return (res.data as List).map((e) => ResortData.fromJson(e)).toList();
  }
}
