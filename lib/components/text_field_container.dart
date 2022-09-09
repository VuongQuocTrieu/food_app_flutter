import 'package:flutter/material.dart';
import 'package:food_flutter/constants.dart';

class TextFieldContainer extends StatelessWidget {

  final Widget child;

  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: 60,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: Color(0xffE1E1E1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
