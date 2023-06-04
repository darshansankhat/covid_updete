import 'package:flutter/material.dart';

class State_list extends StatefulWidget {
  const State_list({Key? key}) : super(key: key);

  @override
  State<State_list> createState() => _State_listState();
}

class _State_listState extends State<State_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("State_list"),
    );
  }
}
