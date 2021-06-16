import 'package:flutter/material.dart';
import 'package:payunitdowngraded/widget/bottomappbar.dart';

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.teal[50],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.menu_rounded)),
                      ),
                      Text("Home"),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.teal[50],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.notifications)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    // hintStyle: kplaceholder,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.teal[50],
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.teal[50],
                      ),
                    ),
                    hintText: "Search",
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
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
