import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryButton extends StatelessWidget {
  final Function press;
  final String title;

  const PrimaryButton({Key key, @required this.press, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            color: ktextLightColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: kSecondaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          )),
    );
  }
}
