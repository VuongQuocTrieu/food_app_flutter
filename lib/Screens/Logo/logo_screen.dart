import 'package:flutter/material.dart';
import 'package:food_flutter/Screens/Welcome/welcome_screen.dart';
import 'package:food_flutter/constants.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Center(
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomeScreen(),
                ),
              );
            },
            icon: Image.asset("assets/images/logo.png",),
            iconSize: size.height * 0.3,
          ),
        ),
      ),
    );
  }
}
