import 'package:app2/view/components_utils/shape_stars.dart';
import 'package:flutter/material.dart';
import 'package:app2/util/varcolors.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/user.png";
  String name = "User 1";
  String details = "1 review  photos";
  String comment = "There is an amazing place in Boyaca";
  double quantityStars;

  Review(this.pathImage, this.name, this.details, this.comment,
      this.quantityStars);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0, fontFamily: "LORA"),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style:
            TextStyle(fontSize: 12.0, fontFamily: "LORA", color: ColorTextGris),
      ),
    );

    final userComments = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            fontFamily: "LORA",
            color: ColorTextGris,
            fontWeight: FontWeight.w900),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        Row(
          children: [userInfo, new ShapeStars(quantityStars, 5.0, 14.0)],
        ),
        userComments
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}
