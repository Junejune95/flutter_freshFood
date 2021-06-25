import 'package:flutter/material.dart';
import 'package:freshFood/models/foodStuff.dart';
import 'package:freshFood/models/menu.dart';

import '../../constants.dart';
import 'components/menu_card.dart';
import 'components/popular_card.dart';
import 'components/popular_row.dart';
import '../../components/profile_image.dart';
import 'components/search_text_box.dart';
import 'components/show_cart.dart';

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

  List foodStuffs = [
    FoodStuff(
        name: 'Banana',
        amount: '1.50',
        bgColor: Color(0xFFD4B1AB),
        image: 'assets/images/banna.png',
        textColor: Colors.yellow[300]),
    FoodStuff(
        name: 'Strawberry',
        amount: '3.50',
        bgColor: Color(0xFFEBEBAB),
        textColor: Colors.red,
        image: 'assets/images/strawberry.png'),
  ];

  List foodStuffs2 = [
    FoodStuff(
        name: 'Cherry',
        amount: '3.00',
        bgColor: Color(0xFFEFD100),
        image: 'assets/images/peach.png',
        textColor: Colors.redAccent),
    FoodStuff(
      name: 'Papaya',
      amount: '3.50',
      bgColor: Color(0xFF6CA82C),
      textColor: Colors.orange[400],
      image: 'assets/images/pineapple.png',
      locationColor: Colors.grey[50]
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
                      width: MediaQuery.of(context).size.width / 1.17,
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
            ),
            PopularRow(),
            Positioned(
              top: 305,
              left: 10,
              child: Row(
                children: List.generate(foodStuffs.length, (index) {
                  print(foodStuffs[index].image);
                  return PopularCard(
                    foodStuff: foodStuffs[index],
                  );
                }),
              ),
            ),
            Positioned(
              top: 545,
              left: 10,
              child: Row(
                children: List.generate(foodStuffs.length, (index) {
                  print(foodStuffs[index].image);
                  return PopularCard(
                    foodStuff: foodStuffs2[index],
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
