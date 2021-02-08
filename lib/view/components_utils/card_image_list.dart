import 'package:app2/view/components_utils/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(
          25.00,
        ),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/chiquinquira.jpg"),
          CardImage("assets/img/in_church.jpg"),
          CardImage("assets/img/over_park.jpg"),
          CardImage("assets/img/park.jpg")
        ],
      ),
    );
  }
}
