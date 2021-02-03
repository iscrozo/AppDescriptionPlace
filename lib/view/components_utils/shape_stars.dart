import 'package:flutter/material.dart';
import 'package:app2/util/varcolors.dart';

class ShapeStars extends StatelessWidget {
  double stars;
  double marginleft;
  double fontsize;

  ShapeStars(this.stars, this.marginleft, this.fontsize);

  Widget getStar(double star) {
    var icon = Icons.star;
    if (star == 0.5) {
      icon = Icons.star_half;
    } else if (star < 0.5) {
      icon = Icons.star_border;
    }

    return Container(
      margin: EdgeInsets.only(right: 3.0),
      child: Icon(
        icon,
        color: colorStar,
        size: fontsize,
      ),
    );
  }

  Widget getRatin(double stars) {
    var list = new List<Widget>();

    for (var n = 0; n < 5; n++) {
      list.add(getStar(stars));
      stars--;
    }
    return Container(
      margin: EdgeInsets.only(left: marginleft),
      child: Row(
        children: list,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return getRatin(stars);
  }
}
