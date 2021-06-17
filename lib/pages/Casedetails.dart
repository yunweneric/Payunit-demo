import 'package:flutter/material.dart';
import 'package:pay_unit_sdk/pay_unit_sdk.dart';
import 'package:payunitdowngraded/pages/Paynow.dart';
import 'package:payunitdowngraded/widget/Mainappbar.dart';
import 'package:payunitdowngraded/widget/bottomappbar.dart';
import 'package:payunitdowngraded/widget/constants.dart';
import 'package:random_string/random_string.dart';

class CaseDetails extends StatefulWidget {
  const CaseDetails({Key key}) : super(key: key);

  @override
  _CaseDetailsState createState() => _CaseDetailsState();
}

class _CaseDetailsState extends State<CaseDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                MainAppbar(
                  firstIcon: GestureDetector(
                    onTap: () => {Navigator.pop(context)},
                    child: Icon(
                      Icons.arrow_back,
                      size: 20.0,
                    ),
                  ),
                  topic: "Details",
                  lastIcon: Icon(Icons.more_vert_rounded),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    // height: 200.0,
                    image: AssetImage('assets/images/child2.jpg'),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Help the indonesian kids find and get better education',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: "Lato",
                    fontSize: 15.0,
                    height: 1.5,
                    wordSpacing: 5.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.check_circle,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Winchesters",
                                style: kcompany,
                              ),
                              Text(
                                'verified foundation',
                                style: klittecom,
                              )
                            ]),
                      ],
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Subtitle(
                  subtitle: 'Donation goals',
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Text("HI"),
                    // ProgressIndicator(value: 2,)
                    SliderTheme(
                      child: Container(
                        width: screenWidth(context) / 1.5,
                        child: Slider(
                          onChanged: (intial) {
                            print('hi');
                          },
                          max: 30,
                          min: 0,
                          value: 12.0,
                        ),
                      ),
                      data: SliderThemeData(
                        thumbColor: Colors.transparent,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        trackHeight: 7.0,
                        tickMarkShape: SliderTickMarkShape.noTickMark,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '12 ',
                          style: TextStyle(
                            fontFamily: "Lato",
                            color: Colors.teal,
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          '/ 30',
                          style: TextStyle(
                            fontFamily: "Lato",
                            color: Colors.blueGrey,
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          " days",
                          style: TextStyle(
                            fontFamily: "Lato",
                            color: Colors.blueGrey,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Subtitle(
                  subtitle: 'Participants',
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.teal,
                              backgroundImage:
                                  AssetImage('assets/images/child2.jpg'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.teal,
                              backgroundImage:
                                  AssetImage('assets/images/child1.jpg'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.teal,
                              child: Text(
                                '9+',
                                style: TextStyle(
                                    fontFamily: 'Lato', fontSize: 12.0),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'see all',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15.0,
                            color: Colors.teal,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Paynow(),
                      ),
                    );
                  },
                  child: Container(
                    width: screenWidth(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                          child: Text(
                        "Donate now",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  final String subtitle;
  final icon;
  const Subtitle({
    Key key,
    this.subtitle,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          this.subtitle == null ? "" : this.subtitle,
          style: TextStyle(
            color: Colors.blueGrey,
            fontFamily: "Lato",
            fontSize: 15.0,
            height: 1.5,
            wordSpacing: 5.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(Icons.more_horiz)
      ],
    );
  }
}
