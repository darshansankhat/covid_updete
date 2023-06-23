import 'dart:convert';

import 'package:covid_updete/Covid_19/Model/Covid_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {

  static ApiHelper apiHelper=ApiHelper();

  List json=[];
  List<CovidModel> jsonData=[];

  Future<List<CovidModel>> apiDataParsing() async {
    String link = "https://corona.lmao.ninja/v2/countries?yesterday=null&sort=null";

    var response = await http.get(Uri.parse(link));

    json = jsonDecode(response.body);

    print(json);

    jsonData=json.map((e) => CovidModel.fromJson(e)).toList();

    return jsonData;
  }
}