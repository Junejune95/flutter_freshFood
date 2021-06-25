import 'package:flutter/material.dart';

import '../../../constants.dart';

class PopularRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Positioned(
              top: 272,
              left: 16,
              right: 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Popular Foodstuffs',
                        style: TextStyle(
                            fontSize: 18,
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            color: kSecondaryColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_right_outlined,
                          color: kSecondaryColor,
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
  }
}