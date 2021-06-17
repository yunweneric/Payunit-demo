import 'package:flutter/material.dart';
import 'package:pay_unit_sdk/pay_unit_sdk.dart';
import 'package:payunitdowngraded/pages/Casedetails.dart';
import 'package:payunitdowngraded/widget/constants.dart';
import 'package:random_string/random_string.dart';
import 'package:flutter_config/flutter_config.dart';

var totalAmount;
String api_user;
String api_password;
String api_key;

class Paynow extends StatefulWidget {
  const Paynow({
    Key key,
  }) : super(key: key);

  @override
  _PaynowState createState() => _PaynowState();
}

class _PaynowState extends State<Paynow> {
  @override
  void initState() {
    getCredentials();
    super.initState();
  }

  Future getCredentials() async {
    setState(() {
      api_key = FlutterConfig.get('apiUser');
      api_password = FlutterConfig.get('apiPassword');
      api_key = FlutterConfig.get('apiKey');
    });
  }

  final GlobalKey<FormFieldState> _globalKey = GlobalKey<FormFieldState>();
  TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.linearToSrgbGamma(),
            image: AssetImage('assets/images/shots.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'How much do you want to donate?',
                  style: ksubtitles,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 58.0),
                  child: TextField(
                    key: _globalKey,
                    controller: _amountController,
                    onChanged: (amount) => {
                      setState(() {
                        totalAmount = amount;
                        print(api_key);
                        print(api_password);
                        // print(FlutterConfig.get('apiKey'));
                      })
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(),
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
                      hintText: "Enter Amount Here",
                      hintStyle: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 15.0,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80.0, vertical: 30),
                  child: PayUnitButton(
                    apiUser: 'payunit_sand_TyHmv7QIe',
                    apiPassword: "47c6ba11-3d5c-46af-ba29-79199c35fca0",
                    apiKey: "f41b310f22617387d0c01f9f461b91dbf5bb54bd",
                    transactionId: randomAlphaNumeric(10),
                    mode: 'sandbox', // sandbox or live,
                    transactionCallBackUrl: "<Your transactionCallBackUrl url>",
                    notiFyUrl: "<Your notification url>",
                    transactionAmount: totalAmount,
                    currency:
                        "XAF", //// The currency of your transaction : XAF for FCFA or USD for $ ect ...
                    buttonTextColor: Colors.white,
                    productName: "<The name of the product>",
                    color: Colors.teal,

                    ///the colors of the PayUnit Button text DEFAULT WHITE,
                    actionAfterProccess: (transactionId, transactionStatus) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => CaseDetails(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
