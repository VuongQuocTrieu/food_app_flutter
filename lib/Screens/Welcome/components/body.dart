import 'package:flutter/material.dart';
import 'package:food_flutter/Screens/Login/login_screen.dart';
import 'package:food_flutter/Screens/SignUp/signup_screen.dart';
import 'package:food_flutter/Screens/Welcome/components/background.dart';
import 'package:food_flutter/components/rounded_button.dart';
import 'package:food_flutter/constants.dart';
// import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.2,
            ),
            Image.asset(
              "assets/images/logo.png",
              width: size.width * 0.5,
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
            Text(
              "Welcome",
              style: TextStyle(color: Color(0xffE60023), fontSize: 40),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedButton(
              text: "Login",
              color: kPrimaryColor,
              textColor: kPrimaryLightColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedButton(
              text: "Sign up",
              color: Colors.white,
              textColor: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


