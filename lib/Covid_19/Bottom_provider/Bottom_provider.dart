import 'package:covid_updete/Covid_19/View/Cases_screen.dart';
import 'package:covid_updete/Covid_19/View/Country_screen.dart';
import 'package:covid_updete/Covid_19/View/Home_screen.dart';
import 'package:covid_updete/Covid_19/View/Info_screen.dart';
import 'package:covid_updete/Covid_19/View/State_list.dart';
import 'package:flutter/cupertino.dart';

class BottomProvider extends ChangeNotifier
{
  int i=0;

  List screenList=[
    Home_screen(),
    Country_screen(),
    State_list(),
    Info_screen(),
  ];

  void selectScreen(int value)
  {
    i=value;

    notifyListeners();
  }
}