import 'package:flutter/material.dart';
import 'package:payunitdowngraded/pages/Casedetails.dart';
import 'package:payunitdowngraded/widget/Mainappbar.dart';
import 'package:payunitdowngraded/widget/bottomappbar.dart';
import 'package:payunitdowngraded/widget/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ButtomappBar(
          homecolor: Colors.teal,
          // searchcolor: Colors.teal[200],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: MainAppbar(
                    firstIcon: Icon(Icons.menu_rounded),
                    topic: "Home",
                    lastIcon: Icon(Icons.notifications),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.teal,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.teal[200],
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.teal[200],
                      ),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 14.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Start New \nFundraising!',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Lato",
                            fontSize: 16.0,
                            height: 1.5,
                            letterSpacing: 1.2,
                            wordSpacing: 1.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        RaisedButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                          child: Text(
                            'Start Now',
                            style: TextStyle(
                              color: Colors.teal,
                              fontFamily: "Lato",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopIcon(
                        color: Colors.teal,
                        myicon: Icons.medical_services,
                        content: 'Medical',
                      ),
                      TopIcon(
                        myicon: Icons.school,
                        color: Colors.orange,
                        content: 'School',
                      ),
                      TopIcon(
                        myicon: Icons.warning,
                        color: Colors.red[500],
                        content: 'Disaster',
                      ),
                      TopIcon(
                        myicon: Icons.more_horiz_rounded,
                        color: Colors.green,
                        content: 'Others',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Statistics', style: ksubtitles),
                      Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.blueGrey,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Stack(
                  // fit: StackFit.passthrough,
                  alignment: Alignment.topCenter,
                  overflow: Overflow.visible,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => CaseDetails(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/child2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -10,
                      // right: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 10), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        height: 80,
                        width: screenWidth(context) / 1.5,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Help the Jamaican .......',
                                    style: kcompany),
                                Row(
                                  children: [
                                    Text(
                                      '12',
                                      style: TextStyle(
                                          fontFamily: "Lato",
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.teal),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'participant',
                                      style: klittecom,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 40.0,
                              child: RaisedButton(
                                color: Colors.teal,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          CaseDetails(),
                                    ),
                                  );
                                },
                                child: (Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: 20.0,
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopIcon extends StatelessWidget {
  final Color color;
  final myicon;
  final String content;
  const TopIcon({
    Key key,
    this.color,
    this.content,
    this.myicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.teal[50],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              this.myicon == null ? Icons.ac_unit : this.myicon,
              color: this.color,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          this.content == null ? "" : this.content,
          style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.blueGrey,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
