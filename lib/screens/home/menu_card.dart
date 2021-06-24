import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshFood/constants.dart';
import 'package:freshFood/models/menu.dart';

class MenuCard extends StatelessWidget {
  final MenuModel menu;

  const MenuCard({Key key, @required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: EdgeInsets.all(5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(bottom: 4),
              child: SvgPicture.asset(
                menu.image,
                color: kSecondaryColor,
                allowDrawingOutsideViewBox: true,
              ),
            ),
            Text(
              menu.title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
