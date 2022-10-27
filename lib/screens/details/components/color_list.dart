import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'list_color_dart.dart';

class ListofColors extends StatelessWidget {
  const ListofColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(
            fillColor: Color(0xff80899A),
            isSelected: true,
          ),ColorDot(
            fillColor: Color(0xffff5200),
          ),ColorDot(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}