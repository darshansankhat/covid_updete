import 'dart:math';

import 'package:covid_updete/Covid_19/Provider/Covid_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  CovidProvider? providerF;
  CovidProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<CovidProvider>(context, listen: false);
    providerT = Provider.of<CovidProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff473F97),
        leading: Icon(
          Icons.sort,
          color: Colors.white,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.notifications_none_sharp,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 10),
        ],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 35.h,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: Color(0xff473F97),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Covid-19",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 6.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              "You are in \n       🇮🇳",
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "Are you feeling sick?",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  SizedBox(height: 2.h,),
                  Text(
                    "If you feeli sick with any of covid-19 symptoms please call or SMS us immediately for help.",
                    style: TextStyle(fontSize: 18, color: Colors.white54),
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 7.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.redAccent,
                        ),
                        alignment: Alignment.center,
                        child: Text("📲 Call now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      Container(
                        height: 7.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                        ),
                        alignment: Alignment.center,
                        child: Text("📲 SMS now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Prevention",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    prevention(
                        "Avoid close contact", "assets/image/distanc.png"),
                    prevention(
                        " Clean your hands often", "assets/image/hand.png"),
                    prevention("  Wear a facemask", "assets/image/mask.png"),
                  ],
                ),
                Container(
                  height: 16.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff473F97),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/image/n.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Do your own test!\n",
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Follow the instruction to \ndo your own test.",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white60),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget prevention(String data, String img) {
    return Container(
      height: 25.h,
      width: 30.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment(0, 0),
            children: [
              Container(
                height: 15.h,
                width: 25.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepOrange.shade100,
                ),
              ),
              Image.asset(
                "$img",
                height: 100,
                width: 100,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "$data",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
