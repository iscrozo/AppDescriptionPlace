import 'package:app2/view/components_utils/card_image_list.dart';
import 'package:app2/view/components_utils/gradient_back.dart';
import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack("Religious Capital"), CardImageList()],
    );
  }
}
