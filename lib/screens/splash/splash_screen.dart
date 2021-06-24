import 'package:flutter/material.dart';
import 'package:freshFood/components/bg_svg.dart';
import 'package:freshFood/components/primary_button.dart';
import 'package:freshFood/constants.dart';
import 'package:freshFood/screens/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Get\nOrganic Food',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: ktextLightColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Find the fresh food and get free delievery in your town',
                    style: TextStyle(
                      color: ktextLightColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                    press: () {
                      Navigator.pushNamed(
                        context,
                        HomeScreen.routeName,
                      );
                    },
                    title: 'Get Started',
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 110,
              child: BackgroundSVG(
                image: 'assets/icons/green.svg',
                width: 50,
              ),
            ),
            Positioned(
              bottom: 0,
              child: BackgroundSVG(
                image: 'assets/icons/fruits.svg',
                width: 80,
              ),
            ),
            Positioned(
              bottom: 220,
              left: 100,
              child: BackgroundSVG(
                image: 'assets/icons/green.svg',
                width: 60,
              ),
            ),
            Positioned(
              bottom: 220,
              right: 0,
              child: BackgroundSVG(
                image: 'assets/icons/vegetable.svg',
                width: 80,
              ),
            ),
            Positioned(
              bottom: 200,
              left: 0,
              child: BackgroundSVG(
                image: 'assets/icons/vegetable.svg',
                width: 70,
              ),
            ),
            Positioned(
              bottom: 100,
              left: 80,
              child: BackgroundSVG(
                image: 'assets/icons/fruits.svg',
                width: 70,
              ),
            ),
            Positioned(
              bottom: 90,
              right: 0,
              child: BackgroundSVG(
                image: 'assets/icons/green.svg',
                width: 80,
              ),
            ),
            Positioned(
              bottom: 130,
              right: 90,
              child: BackgroundSVG(
                image: 'assets/icons/mushroom.svg',
                width: 80,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 140,
              child: BackgroundSVG(
                image: 'assets/icons/green.svg',
                width: 60,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 70,
              child: BackgroundSVG(
                image: 'assets/icons/vegetable.svg',
                width: 60,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: BackgroundSVG(
                image: 'assets/icons/mushroom.svg',
                width: 50,
              ),
            ),
            Positioned(
              bottom: 280,
              right: 120,
              child: BackgroundSVG(
                image: 'assets/icons/fruits.svg',
                width: 50,
              ),
            ),
            Positioned(
              top: 60,
              right: 0,
              child: BackgroundSVG(
                image: 'assets/icons/fruits.svg',
                width: 70,
              ),
            ),
            Positioned(
              top: 200,
              right: 0,
              child: BackgroundSVG(
                image: 'assets/icons/green.svg',
                width: 70,
              ),
            ),
            Positioned(
              top: 320,
              right: 0,
              child: BackgroundSVG(
                image: 'assets/icons/vegetable.svg',
                width: 50,
              ),
            ),
            Positioned(
              top: 330,
              right: 190,
              child: BackgroundSVG(
                image: 'assets/icons/vegetable.svg',
                width: 40,
              ),
            ),
            Positioned(
              top: 350,
              left: 10,
              child: BackgroundSVG(
                image: 'assets/icons/green.svg',
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
