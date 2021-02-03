import 'package:app2/view/review.dart';
import 'package:flutter/material.dart';
import 'package:app2/view/description_place.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final textLorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  String pathImage = "assets/img/user.png";
  String name = "User 1";
  String details = "1 review  photos";
  String comment = "There is an amazing place in Boyaca";

  @override
  Widget build(BuildContext context) {
    final bodyReview = Column(
      children: [
        new DescriptionPlace("Chiquinquira", 5, textLorem,4.5),
        new Review(pathImage, name, details, comment, 3),
      ],
    );

    return MaterialApp(
        title: 'Desc-Place',
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Desc-Place",
                textAlign: TextAlign.center,
              ),
            ),
            body: bodyReview));
  }
}
