import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Present extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Present Address Page"),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
              "Present Address of user",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
        ));
  }
}
