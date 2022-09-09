import 'package:flutter/material.dart';
import 'package:food_flutter/components/rounded_button.dart';
import 'package:food_flutter/components/rounded_payment.dart';
import 'package:food_flutter/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyStatefulWidget(),
    );
  }
}

enum PaymentMethod { card, paypal , cash }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  PaymentMethod? _character = PaymentMethod.card;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.05,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // height: 100,
          child: RadioListTile<PaymentMethod>(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Color(0xffEBEBEB), width: 2),
            ),
            // shadowColor: Colors.white54,

            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: Colors.red,
            tileColor: Colors.white,
            title: const Text('Credit, debit Card', style: TextStyle(fontSize: 25, color: Colors.black),),
            value: PaymentMethod.card,
            groupValue: _character,
            onChanged: (PaymentMethod? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // height: 100,
          child: RadioListTile<PaymentMethod>(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Color(0xffEBEBEB), width: 2),
            ),
            // shadowColor: Colors.white54,

            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: Colors.red,
            tileColor: Colors.white,
            title: const Text('Paypal', style: TextStyle(fontSize: 25, color: Colors.black),),
            value: PaymentMethod.paypal,
            groupValue: _character,
            onChanged: (PaymentMethod? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // height: 100,
          child: RadioListTile<PaymentMethod>(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Color(0xffEBEBEB), width: 2),
            ),
            // shadowColor: Colors.white54,

            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: Colors.red,
            tileColor: Colors.white,
            title: const Text('Cash on Delivery', style: TextStyle(fontSize: 25, color: Colors.black),),
            value: PaymentMethod.cash,
            groupValue: _character,
            onChanged: (PaymentMethod? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        RoundedButton(
          text: "Next",
          color: kPrimaryColor,
          textColor: kPrimaryLightColor,
          press: () {},
        ),
      ],
    );
  }
}
