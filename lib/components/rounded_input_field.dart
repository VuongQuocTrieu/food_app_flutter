import 'package:flutter/material.dart';
import 'package:food_flutter/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {

  final String hintText;
  final ValueChanged<String> onChanged;
  final bool obscureText;

  const RoundedInputField({Key? key, required this.hintText, required this.onChanged, required this.obscureText,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xff8E8E8E), fontSize: 20),
          border: InputBorder.none,
        ),
      ),

    );
  }
}
