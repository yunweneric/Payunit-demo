import 'dart:async';

import 'package:flutter/material.dart';
import 'package:payunitdowngraded/pages/Casedetails.dart';
import 'package:payunitdowngraded/pages/Hompage.dart';
import 'package:payunitdowngraded/widget/constants.dart';

class Successpage extends StatefulWidget {
  final String amount;
  final String message;
  final String imageUrl;
  final String transactionStatus;
  final Color textColor;
  const Successpage({
    Key key,
    this.message,
    this.amount,
    this.imageUrl,
    this.textColor,
    this.transactionStatus,
  }) : super(key: key);

  @override
  _SuccesspageState createState() => _SuccesspageState();
}

class _SuccesspageState extends State<Successpage> {
  @override
  @override
  void initState() {
    super.initState();
    redirectUser();
  }

  void redirectUser() {
    Timer(
      Duration(seconds: 10),
      () => {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) =>
                widget.transactionStatus == 'SUCCESS'
                    ? HomePage()
                    : CaseDetails(),
          ),
        )
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(widget.imageUrl == null ? "" : widget.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                widget.message == null ? "" : widget.message,
                style: TextStyle(
                  color: widget.textColor,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
