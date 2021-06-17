import 'package:flutter/material.dart';
import 'package:payunitdowngraded/pages/Casedetails.dart';
import 'package:payunitdowngraded/pages/Successpage.dart';
import 'package:payunitdowngraded/widget/constants.dart';

class ButtomappBar extends StatelessWidget {
  final Color homecolor;
  final Color settingcolor;
  final Color firecolor;
  final Color searchcolor;
  final Color altcolor;
  @override
  const ButtomappBar(
      {Key key,
      this.homecolor,
      this.settingcolor,
      this.firecolor,
      this.searchcolor,
      this.altcolor})
      : super(key: key);
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      // color: Colors.red,
      child: SizedBox(
        width: screenWidth(context),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlatButton(
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 25.0,
                      color: this.homecolor == null
                          ? Colors.blueGrey
                          : this.homecolor,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: 10.0,
                      height: 3.0,
                      color: this.homecolor,
                      child: Text(""),
                    )
                  ],
                ),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/login');
                Navigator.pushNamed(context, '/home');
                print("Going home");
              },
            ),
            FlatButton(
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      // FontAwesomeIcons.fire,
                      Icons.menu_rounded,
                      size: 25.0,
                      color: this.firecolor == null
                          ? Colors.blueGrey
                          : this.firecolor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 10.0,
                      height: 3.0,
                      color: this.firecolor,
                      child: Text(""),
                    )
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Successpage(),
                  ),
                );
              },
            ),
            FlatButton(
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      // FontAwesomeIcons.,
                      Icons.account_circle_rounded,
                      size: 25.0,
                      color: this.searchcolor == null
                          ? Colors.blueGrey
                          : this.searchcolor,
                      // color: klightgrey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 10.0,
                      height: 3.0,
                      color: this.searchcolor,
                      child: Text(""),
                    )
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
                print("Settings Page");
              },
            ),
            FlatButton(
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      // FontAwesomeIcons.,
                      Icons.settings,
                      size: 25.0,
                      color: this.settingcolor == null
                          ? Colors.blueGrey
                          : this.settingcolor,
                      // color: klightgrey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 10.0,
                      height: 3.0,
                      color: this.settingcolor,
                      child: Text(""),
                    )
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
                print("Settings Page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
