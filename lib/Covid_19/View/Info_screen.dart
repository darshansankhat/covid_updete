import 'package:flutter/material.dart';

class Info_screen extends StatefulWidget {
  const Info_screen({Key? key}) : super(key: key);

  @override
  State<Info_screen> createState() => _Info_screenState();
}

class _Info_screenState extends State<Info_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Info_screen"),
    );
  }
}
