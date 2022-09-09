import 'package:flutter/material.dart';
import 'package:food_flutter/Screens/Payment/components/body.dart';
import 'package:food_flutter/Screens/Cart/cart_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          child: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            icon: Image.asset("assets/images/back.png", height: 25, width: 25, fit: BoxFit.cover,),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text("Payment", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        ),
      ),
      body: Body(),
    );
  }
}
