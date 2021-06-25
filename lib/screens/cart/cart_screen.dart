import 'package:flutter/material.dart';
import 'package:freshFood/components/profile_image.dart';
import 'package:freshFood/constants.dart';
import 'package:freshFood/models/foodStuff.dart';
import 'package:freshFood/screens/cart/single_cart.dart';

import 'footer_button.dart';

class CartScreen extends StatefulWidget {
  static String routeName = "/cart";

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List foodStuffs2 = [
    FoodStuff(
        name: 'Cherry',
        amount: '3.00',
        bgColor: Color(0xFFEFD100),
        image: 'assets/images/cherry.png',
        textColor: Colors.redAccent,
        locationName: 'Spanish'),
    FoodStuff(
      name: 'Dragon Fruits',
      amount: '3.50',
      bgColor: Color(0xFF6CA82C),
      textColor: Colors.red,
      image: 'assets/images/dragonFruit.png',
      locationColor: Colors.grey[50],
      locationName: 'Myanmar',
    ),
    FoodStuff(
      name: 'Dragon Fruits',
      amount: '3.50',
      bgColor: Color(0xFF6CA82C),
      textColor: Colors.orange[400],
      image: 'assets/images/orange.png',
      locationColor: Colors.grey[50],
      locationName: 'Italy',
    ),
    FoodStuff(
      name: 'Avocado',
      amount: '3.50',
      bgColor: Color(0xFF6CA82C),
      textColor: Colors.green,
      image: 'assets/images/avocado.png',
      locationColor: Colors.grey[50],
      locationName: 'Italy',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ktextLightColor,
        iconTheme: IconThemeData(color: kSecondaryColor),
        elevation: 0,
        actions: [ProfileImage()],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              child: Column(
                children: List.generate(
                  foodStuffs2.length,
                  (index) => SingleCart(
                    foodStuff: foodStuffs2[index],
                  ),
                ),
              ),
            ),
            BottomAction()
          ],
        ),
      ),
    );
  }
}
