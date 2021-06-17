import 'package:flutter/material.dart';
import 'package:payunitdowngraded/widget/constants.dart';

class Successpage extends StatelessWidget {
  const Successpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
            child: CircularProgressIndicator(
          backgroundColor: Colors.teal,
        )),
      ),
    );
  }
}
