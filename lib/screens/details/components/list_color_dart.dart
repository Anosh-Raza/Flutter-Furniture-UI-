import 'package:flutter/material.dart';

import '../../../constants.dart';


class ColorDot extends StatelessWidget {
  ColorDot({
    Key? key,
    required this.fillColor,
    this.isSelected = false
  }) : super(key: key);

  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Color(0xff707070) : Colors.transparent,
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}