import 'package:flutter/material.dart';
import 'package:freshFood/models/foodStuff.dart';

class SingleCart extends StatelessWidget {
  final FoodStuff foodStuff;

  const SingleCart({Key key, this.foodStuff}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(foodStuff.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodStuff.name,
                style: TextStyle(
                  color: foodStuff.textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                foodStuff.locationName,
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$' + foodStuff.amount,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}
