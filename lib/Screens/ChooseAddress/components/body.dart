import 'package:flutter/material.dart';
import 'package:food_flutter/components/rounded_button.dart';
import 'package:food_flutter/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyStatefulWidget(),
    );
  }
}

enum ChooseAddress { home, office}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  ChooseAddress? _character = ChooseAddress.home;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.05,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // height: 200,
          child: RadioListTile<ChooseAddress>(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Color(0xffEBEBEB), width: 2),
            ),
            // shadowColor: Colors.white54,

            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: Colors.red,
            tileColor: Colors.white,
            title: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: Column(
                children: [
                  Text(
                    'My Home Address',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  // Text("dfffffffff", style: TextStyle(fontSize: 25, color: Colors.black),),
                  // Text("sdffffff\nf"),
                ],
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Home\n (503)338-5200 15612 Fisher Island Dr\n Miami Beach, Frorida(FL), 33109',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                ),
              ),
            ),
            value: ChooseAddress.home,
            groupValue: _character,
            onChanged: (ChooseAddress? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // height: 200,
          child: RadioListTile<ChooseAddress>(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Color(0xffEBEBEB), width: 2),
            ),
            // shadowColor: Colors.white54,

            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: Colors.red,
            tileColor: Colors.white,
            title: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: Column(
                children: [
                  Text(
                    'My Office Address',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  // Text("dfffffffff", style: TextStyle(fontSize: 25, color: Colors.black),),
                  // Text("sdffffff\nf"),
                ],
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Office\n (503)338-5200 15612 Fisher Island Dr\n Miami Beach, Frorida(FL), 33109',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                ),
              ),
            ),
            value: ChooseAddress.office,
            groupValue: _character,
            onChanged: (ChooseAddress? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        ElevatedButton.icon(
          icon: const Icon(
            Icons.add,
            color: Colors.red,
          ),
          onPressed: () {},
          label: Text(
            "Add New Address",
            style: const TextStyle(
                fontSize: 16,
                color: Colors.red),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            fixedSize: const Size(190, 43),
              // shadowColor: Colors.red,
              side: BorderSide(width: 1, color: Colors.red),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        RoundedButton(
          text: "Done",
          color: kPrimaryColor,
          textColor: kPrimaryLightColor,
          press: () {},
        ),
      ],
    );
  }
}
