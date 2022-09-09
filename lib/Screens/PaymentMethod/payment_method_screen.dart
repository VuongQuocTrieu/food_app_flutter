import 'package:flutter/material.dart';
import 'package:food_flutter/Screens/PaymentMethod/components/body.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: Image.asset("assets/images/back.png", height: 25, width: 25, fit: BoxFit.cover,),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text("Payment Method", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        ),
      ),
      body: Body(),
    );
  }
}
