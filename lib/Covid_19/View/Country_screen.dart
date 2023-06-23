import 'package:covid_updete/Covid_19/Provider/Covid_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Country_screen extends StatefulWidget {
  const Country_screen({Key? key}) : super(key: key);

  @override
  State<Country_screen> createState() => _Country_screenState();
}

class _Country_screenState extends State<Country_screen> {
  CovidProvider? providerF;
  CovidProvider? providerT;

  @override
  void initState() {
    super.initState();
    Provider.of<CovidProvider>(context, listen: false).dataParsing();
  }

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<CovidProvider>(context, listen: false);
    providerT = Provider.of<CovidProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff473F97),
          elevation: 0,
          title: Container(
            height: 7.h,
            width: 100.w,
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Search country......",style: TextStyle(fontSize: 18,color: Colors.black),),
                ),
                IconButton(onPressed: () {

                }, icon: Icon(Icons.search,color: Colors.black,))
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xff473F97),
        body: providerT!.data.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.red,
              ))
            : GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 15.h),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "case", arguments: index);
                    },
                    child: Container(
                      height: 15.h,
                      width: 10.w,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      alignment: Alignment.center,
                      child: Text(
                        "${providerT!.data[index].country}",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  );
                },
                itemCount: providerT!.data.length,
              ),
      ),
    );
  }
}
