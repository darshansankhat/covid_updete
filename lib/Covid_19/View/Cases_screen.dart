import 'package:covid_updete/Covid_19/Provider/Covid_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Caces_screen extends StatefulWidget {
  const Caces_screen({Key? key}) : super(key: key);

  @override
  State<Caces_screen> createState() => _Caces_screenState();
}

class _Caces_screenState extends State<Caces_screen> {
  CovidProvider? providerF;
  CovidProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<CovidProvider>(context, listen: false);
    providerT = Provider.of<CovidProvider>(context, listen: true);

    int index = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff473F97),
        leading: Icon(
          Icons.sort,
          color: Colors.white,
          size: 30,
        ),
        centerTitle: true,
        title: Text("${providerT!.data[index].country}"),
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
      backgroundColor: Color(0xff473F97),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              info(47.w, Colors.orange,"Cases","${providerT!.data[index].cases}",21),
              info(47.w, Colors.redAccent,"Recovered","${providerT!.data[index].recovered}",21),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              info(30.w, Colors.green,"Today\nCases","${providerT!.data[index].todayCases}",17),
              info(30.w, Colors.blue.shade300,"Deaths","${providerT!.data[index].deaths}",17),
              info(30.w, Colors.deepPurpleAccent,"Today\nDeaths","${providerT!.data[index].todayDeaths}",17),
            ],
          ),
          SizedBox(height: 1.h,),
          Container(
            height: 16.h,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
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
                      style: TextStyle(fontSize: 18, color: Colors.white60),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 35.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Daily New Cases",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
              ),
              Image.asset("assets/image/cases.png"),
            ],
          ),
        ),
      ),
    );
  }

  Widget info(double wi,Color c1,String data,String numbers,double s)
  {
    return Container(
      height: 15.h,
      width: wi,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: c1,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("$data",style: TextStyle(fontSize: s,color: Colors.white,fontWeight: FontWeight.bold),),
            Text("$numbers",style: TextStyle(fontSize: s,color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
