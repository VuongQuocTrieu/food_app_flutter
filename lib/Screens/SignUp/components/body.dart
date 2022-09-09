import 'package:flutter/material.dart';
import 'package:food_flutter/Screens/Login/login_screen.dart';
import 'package:food_flutter/Screens/SignUp/signup_screen.dart';
import 'package:food_flutter/components/rounded_button.dart';
import 'package:food_flutter/components/rounded_input_field.dart';
import 'package:food_flutter/constants.dart';
import 'package:food_flutter/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                "Register",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Create your new accout.",
                style: TextStyle(color: Color(0xff616161), fontSize: 22),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedInputField(
                hintText: 'Full Name',
                onChanged: (String value) {},
                obscureText: false,
              ),
              RoundedInputField(
                hintText: 'Email or Phone',
                onChanged: (String value) {},
                obscureText: false,
              ),
              RoundedInputField(
                hintText: 'Password',
                onChanged: (String value) {},
                obscureText: true,
              ),
              RoundedInputField(
                hintText: 'Confirm Password',
                onChanged: (String value) {},
                obscureText: true,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Checkbox(
                    value: value,
                    // checkColor: Colors.red,
                    activeColor: Colors.red,
                    onChanged: (value) {
                      setState(
                        () {
                          this.value = value!;
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "I agree to your ",
                          style:
                          TextStyle(color: Color(0xff7A7A7A), fontSize: 20),
                        ),
                        TextSpan(
                          text: "privacy policy ",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: "and \n",
                            style:
                          TextStyle(color: Color(0xff7A7A7A), fontSize: 20),
                        ),
                        TextSpan(
                          text: "terms & conditions. ",
                          style:
                          TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ],
                    ),
                  ), //Text

                  //Checkbox
                ], //<Widget>[]
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedButton(
                text: "Sign up",
                color: kPrimaryColor,
                textColor: Colors.white,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Already an account, ",
                        style:
                        TextStyle(color: Color(0xff7A7A7A), fontSize: 20),
                      ),
                      TextSpan(
                        text: "login",
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
