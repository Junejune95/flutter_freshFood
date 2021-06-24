import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:freshFood/constants.dart';
import 'package:freshFood/models/menu.dart';
import 'package:freshFood/screens/home/menu_card.dart';
import 'package:freshFood/screens/home/profile_image.dart';
import 'package:freshFood/screens/home/search_text_box.dart';
import 'package:freshFood/screens/home/show_cart.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List menuLists = [
    MenuModel(
      image: 'assets/icons/vegetable.svg',
      title: 'Vegetable',
    ),
    MenuModel(
      image: 'assets/icons/fruits.svg',
      title: 'Fruits',
    ),
    MenuModel(
      image: 'assets/icons/green.svg',
      title: 'Greens',
    ),
    MenuModel(
      image: 'assets/icons/mushroom.svg',
      title: 'Mushrooms',
    ),
    MenuModel(
      image: 'assets/icons/dairy-products.svg',
      title: 'Diary',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.8,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 45,
                    left: 20,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.13,
                      height: 45,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: ktextLightColor,
                            size: 34,
                          ),
                          Row(
                            children: [
                              ShowCart(),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: ProfileImage(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SearchBox(),
                ],
              ),
            ),
            Positioned(
              top: 170,
              left: 16,
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return MenuCard(
                      menu: menuLists[index],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: menuLists.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
