import 'package:covid_updete/Covid_19/Bottom_provider/Bottom_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottom_navigation extends StatefulWidget {
  const Bottom_navigation({Key? key}) : super(key: key);

  @override
  State<Bottom_navigation> createState() => _Bottom_navigationState();
}

class _Bottom_navigationState extends State<Bottom_navigation> {
  BottomProvider? providerF;
  BottomProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<BottomProvider>(context, listen: false);
    providerT = Provider.of<BottomProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: providerT!.screenList[providerT!.i],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: providerT!.i,
          onTap: (value) {
            providerF!.selectScreen(value);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.insert_chart,size: 30), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt,size: 30), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.info,size: 30), label: ""),
          ],
        ),
      ),
    );
  }
}
