import 'package:flutter/material.dart';

class Successpage extends StatelessWidget {
  const Successpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
        ),
        child: Text("Success transaction"),
      ),
    );
  }
}
