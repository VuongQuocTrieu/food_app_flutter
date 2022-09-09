import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:food_flutter/Screens/ChooseAddress/choose_address_screen.dart';
import 'package:food_flutter/Screens/PaymentMethod/payment_method_screen.dart';
import 'package:food_flutter/components/rounded_payment.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedPayment(
            text: "Choose Address",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChooseAddressScreen(),
                ),
              );
            },
          ),
          RoundedPayment(
            text: "Payment Methold",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaymentMethodScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
