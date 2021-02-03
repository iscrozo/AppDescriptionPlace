import 'package:flutter/material.dart';
import 'package:app2/view/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/user.png", "user 1", "1 review 5 photos",
            "There is an amazing place in Boyaca", 3),
        Review("assets/img/user.png", "user 2", "3 review 2 photos",
            "It's a nice town", 2),
        Review("assets/img/user.png", "user 3", "3 review 2 photos",
            "It's a nice town", 5),
        Review("assets/img/user.png", "user 4", "3 review 2 photos",
            "It's a nice town", 3)
      ],
    );
  }
}
