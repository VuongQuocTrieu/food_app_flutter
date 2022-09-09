import 'package:flutter/material.dart';
import 'package:food_flutter/Screens/Cart/components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
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
          padding: const EdgeInsets.only(left: 100),
          child: Text("Cart", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        ),
      ),
      body: Body(),
    );
  }
}
