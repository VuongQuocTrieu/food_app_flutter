import 'package:flutter/material.dart';
import 'package:food_flutter/constants.dart';

class RoundedButton extends StatelessWidget {
  final Color color, textColor;
  final String text;
  final press;

  const RoundedButton({
    required this.text,
    required this.color,
    required this.textColor,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.9,
      height: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: kPrimaryColor, width: 2))),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}