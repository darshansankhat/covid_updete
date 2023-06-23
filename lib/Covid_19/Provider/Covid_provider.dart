import 'package:covid_updete/Covid_19/API_helper/Api_helper.dart';
import 'package:covid_updete/Covid_19/Model/Covid_model.dart';
import 'package:flutter/cupertino.dart';

class CovidProvider extends ChangeNotifier
{
  List<CovidModel> data=[];

  Future<void> dataParsing()
  async {

    data = await ApiHelper.apiHelper.apiDataParsing();

    notifyListeners();
  }
}