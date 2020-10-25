import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Permanent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Permanent Address Page"),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
              "Permanent address of user",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
        ));
  }
}
