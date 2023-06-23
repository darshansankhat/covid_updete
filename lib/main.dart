import 'package:covid_updete/Covid_19/Bottom_bar/Bottom_navigation.dart';
import 'package:covid_updete/Covid_19/Bottom_provider/Bottom_provider.dart';
import 'package:covid_updete/Covid_19/Provider/Covid_provider.dart';
import 'package:covid_updete/Covid_19/View/Cases_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => BottomProvider(),),
          ChangeNotifierProvider(create: (context) => CovidProvider(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/": (context) => Bottom_navigation(),
            "case": (context) => Caces_screen(),
          },
        ),
      ),
    ),
  );
}
