import 'package:flutter/material.dart';
import 'package:food_flutter/Screens/Cart/cart_screen.dart';
import 'package:food_flutter/Screens/SignUp/signup_screen.dart';
import 'package:food_flutter/components/rounded_button.dart';
import 'package:food_flutter/components/rounded_input_field.dart';
import 'package:food_flutter/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                "Welcome Back",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Login to your account.",
                style: TextStyle(color: Color(0xff616161), fontSize: 22),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedInputField(
                hintText: 'Email or Phone',
                onChanged: (String value) {},
                obscureText: false,
              ),
              RoundedInputField(
                  obscureText: true,
                  hintText: "Password",
                  onChanged: (String value) {}),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text("Forgot Password?",
                            style: TextStyle(color: Colors.red, fontSize: 20))),
                  ],
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
                      builder: (context) => const CartScreen(),
                    ),
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account, ",
                        style:
                            TextStyle(color: Color(0xff7A7A7A), fontSize: 20),
                      ),
                      TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
