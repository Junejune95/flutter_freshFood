import 'package:flutter/material.dart';
import 'package:freshFood/components/profile_image.dart';
import 'package:freshFood/models/menu.dart';

import '../../constants.dart';
import 'components/menu_card.dart';
import 'components/search_text_box.dart';
import 'components/show_cart.dart';


class HeaderHome extends StatefulWidget {
  @override
  _HeaderHomeState createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
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
    Size size = MediaQuery.of(context).size;

    return  Container(
                height: size.height * 0.35,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.3 - 10,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              // color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: ProfileImage(),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height/18
                            ),
                            SearchBox(),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
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
                  ],
                ),
              );
  }
}