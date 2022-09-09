import 'package:flutter/material.dart';

class RoundedPayment extends StatelessWidget {

  final String text;
  final press;

  const RoundedPayment({
    required this.text,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
          // fixedSize: Size(350, 80),
          textStyle: TextStyle(fontSize: 25,),
          primary: Color(0xffFFFFFF),
          onPrimary: Color(0xff000000),
          // elevation: 15,
          shadowColor: Colors.white54,
          side: BorderSide(color: Color(0xffEBEBEB), width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            // SizedBox(width: 50,),
            Icon(Icons.arrow_forward_ios,),
            // Image.asset("right_arrow.png", width: 5, height: 5,),
          ],
        ),
      ),
    );
  }
}