import 'package:flutter/material.dart';
import 'package:freshFood/screens/cart/cart_screen.dart';

import '../../../constants.dart';

class ShowCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          CartScreen.routeName,
        );
      },
      child: Container(
        height: 36,
        width: 66,
        child: Row(
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: kSecondaryColor,
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                width: 32,
                // height: 36,
                alignment: Alignment.center,
                child: Text(
                  '4',
                  style: TextStyle(
                    color: ktextLightColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: ktextLightColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
