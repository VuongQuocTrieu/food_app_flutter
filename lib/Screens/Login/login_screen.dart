import 'package:flutter/material.dart';
import 'package:food_flutter/Screens/Login/components/body.dart';
import 'package:food_flutter/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBarPart();
  }
}

class AppBarPart extends StatelessWidget {

  const AppBarPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
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
          child: Text("Login", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
        )
      ),
      body: Body(),
    );
  }
}
