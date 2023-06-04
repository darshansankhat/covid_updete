import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
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
            height: 30.h,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: Color(0xff473F97),
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            "Prevention",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              prevention("Avoid close contact"),
              prevention(" Clean your hands often"),
              prevention("  Wear a facemask"),
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
                    Text("Do your own test!\n",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold),),
                    Text("Follow the instruction to \ndo your own test.",style: TextStyle(fontSize: 18,color: Colors.white60),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget prevention(String data) {
    return Container(
      height: 25.h,
      width: 33.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 15.h,
            width: 25.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepOrange.shade100,
            ),
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
