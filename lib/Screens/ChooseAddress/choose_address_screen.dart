import 'package:flutter/material.dart';
import 'package:food_flutter/Screens/ChooseAddress/components/body.dart';

class ChooseAddressScreen extends StatelessWidget {
  const ChooseAddressScreen({Key? key}) : super(key: key);

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
          child: Text("Choose Address", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        ),
      ),
      body: Body(),
    );
  }
}
