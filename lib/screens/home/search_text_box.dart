import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      left: 20,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width/1.12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ktextLightColor,
        ),
        child: TextFormField(
          cursorColor: kSecondaryColor,
          decoration: new InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 10, top: 14, right: 15),
              prefixIcon: Icon(
                Icons.search,
                color: kSecondaryColor,
              ),
              hintText: 'Search foodstuff'),
        ),
      ),
    );
  }
}
