import 'package:flutter/material.dart';
import 'package:pay_unit_sdk/pay_unit_sdk.dart';
import 'package:random_string/random_string.dart';

class PayButton extends StatelessWidget {
  const PayButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          randomAlphaNumeric(10);
        },
        child: PayUnitButton(
          apiUser: "payunit_sand_TyHmv7QIe",
          apiPassword: "47c6ba11-3d5c-46af-ba29-79199c35fca0",
          apiKey: "f41b310f22617387d0c01f9f461b91dbf5bb54bd",
          transactionId: randomAlphaNumeric(10),
          mode: 'sandbox', // sandbox or live,
          transactionCallBackUrl: "<Your transactionCallBackUrl url>",
          notiFyUrl: "<Your notification url>",
          transactionAmount: "200",
          currency:
              "XAF", //// The currency of your transaction : XAF for FCFA or USD for $ ect ...
          buttonTextColor: Colors.white,
          productName: "<The name of the product>",
          color: Colors.teal,

          ///the colors of the PayUnit Button text DEFAULT WHITE,
          actionAfterProccess: (transactionId, transactionStatus) {
            //  Navigator.pushReplacement(context,MaterialPageRoute(builder:(BuildContext context)=>SuccesPage()))
          },
        ),
      ),
    );
  }
}
