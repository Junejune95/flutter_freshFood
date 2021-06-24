import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BackgroundSVG extends StatelessWidget {
  final String image;
  final double width;

  const BackgroundSVG({Key key, @required this.image, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      width: width != null ? width : 100,
      color: kSecondaryColor.withOpacity(0.5),
    );
  }
}
