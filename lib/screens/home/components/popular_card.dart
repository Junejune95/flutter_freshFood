import 'package:flutter/material.dart';
import 'package:freshFood/models/foodStuff.dart';

import '../../../constants.dart';

class PopularCard extends StatelessWidget {
  final FoodStuff foodStuff;

  const PopularCard({Key key, this.foodStuff}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.4,
        height: 220,
        decoration: BoxDecoration(
          color: foodStuff.bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(foodStuff.image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height/2,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodStuff.name,
                          style: TextStyle(
                              color: foodStuff.textColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Ecuador',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\$' + foodStuff.amount,
                          style: TextStyle(
                              color: kSecondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kPrimaryColor),
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: ktextLightColor,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
