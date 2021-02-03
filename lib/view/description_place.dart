import 'package:app2/util/varcolors.dart';
import 'package:flutter/material.dart';
import 'package:app2/view/components_utils/shape_stars.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  double stars;
  String descriptionPlace;
  double positionStarY = 13.0;
  double positionStarX = 3.0;
  double positionTitleY = 10.0;
  double qualifyCity;
  // double positionTitleX =

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace, this.qualifyCity);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final icon_star_half = Container(
      margin: EdgeInsets.only(top: positionStarY, right: positionStarX),
      child: Icon(
        Icons.star_half,
        color: colorStar,
      ),
    );
    final icon_star_border = Container(
      margin: EdgeInsets.only(top: positionStarY, right: positionStarX),
      child: Icon(
        Icons.star_border,
        color: colorStar,
      ),
    );

    final title_stars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: positionTitleY, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lora",
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: positionStarY, right: positionStarX),
          child: Row(
            children: [new ShapeStars(qualifyCity, 0.0, 25.0)],
          ),
        )
      ],
    );

    final textLorem =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

    final picture = Container(
      margin: EdgeInsets.only(top: 5, right: 5, left: 5),
      child: Image(
        image: AssetImage("assets/img/chiquinquira.jpg"),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.justify,
        style: TextStyle(
            fontFamily: "Lora",
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: colorText),
      ),
    );

    return Column(
      children: [picture, title_stars, description],
    );
  }
}
