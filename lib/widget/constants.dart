import 'package:flutter/material.dart';

//--------------------------- Colors -------------------------------------------

// Material color
const MaterialColor primaryColorMaterial = MaterialColor(
  0xFF98C429,
  <int, Color>{
    50: Color.fromRGBO(152, 196, 41, .1),
    100: Color.fromRGBO(152, 196, 41, .2),
    200: Color.fromRGBO(152, 196, 41, .3),
    300: Color.fromRGBO(152, 196, 41, .4),
    400: Color.fromRGBO(152, 196, 41, .5),
    500: Color.fromRGBO(152, 196, 41, .6),
    600: Color.fromRGBO(152, 196, 41, .7),
    700: Color.fromRGBO(152, 196, 41, .8),
    800: Color.fromRGBO(152, 196, 41, .9),
    900: Color.fromRGBO(152, 196, 41, 1),
  },
);

// Theme color
const Color primaryColor = Color(0xFF00C0C5);
// const Color kprimaryblue = Color(0xFF00C0C5);
const Color kprimaryblue = Colors.teal;
const Color blueColor = Color(0xFF3A67BA);
const Color pinkColor = Color(0xFF9C27B0);
const Color grayColor = Color(0xFFD2D2D2);
const Color greenColor = Color(0xFF03A74E);

const Color whiteColor = Color(0xFFFFFFFF);
const Color shadowColor = Color(0xFFC9E2E7);
// ============================================================================

const Color kprimaryred = Color(0xFFF94549);
const Color kprimarygreen = Color(0xFF2B6D0C);
const Color kdark = Color(0xFF000000);
// const Color klightgrey = Color(0xFF757575);
const Color klightgrey = Color(0xFFBBBBBB);
const kgreetings = TextStyle(
    fontSize: 18.0,
    color: klightgrey,
    fontFamily: "lato",
    fontWeight: FontWeight.w500);

const kname = TextStyle(
    fontSize: 25.0,
    // color: Colors.black,
    letterSpacing: 1.5,
    fontWeight: FontWeight.w900,
    fontFamily: "Poppins");

const kmealtime =
    TextStyle(fontFamily: "Poppins", color: Colors.white, fontSize: 12.0);

const kmealtimedark = TextStyle(
  fontFamily: "Poppins",
  // color: Colors.black,
  fontSize: 13.0,
);

const knewrecipetitle = TextStyle(
    fontFamily: "Poppins",
    // color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    textBaseline: TextBaseline.alphabetic);

const kmealtimenewrecipe =
    TextStyle(fontFamily: "Poppins", color: klightgrey, fontSize: 12.0);

const kresultTitle = TextStyle(
    fontFamily: "Poppins",
    // color: Colors.black,
    fontSize: 28.0,
    fontWeight: FontWeight.w900,
    textBaseline: TextBaseline.alphabetic);
const ksubtitles = TextStyle(
    fontSize: 20.0, fontFamily: 'Poppins', fontWeight: FontWeight.bold);

const klighttext =
    TextStyle(color: klightgrey, fontSize: 14.0, fontFamily: 'Poppins');

const kbrandtitle = TextStyle(
  fontFamily: "Lato",
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: kprimaryblue,
  letterSpacing: 1.0,
);
const kbrandtitle2 = TextStyle(
  fontFamily: "Lato",
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: kprimaryred,
  letterSpacing: 1.0,
);
const kbrandtitle3 = TextStyle(
  fontFamily: "Lato",
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  letterSpacing: 1.0,
);
//--------------------------- screen height & width ----------------------------

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}
