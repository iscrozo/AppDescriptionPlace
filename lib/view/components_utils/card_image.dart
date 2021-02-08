import 'package:app2/view/components_utils/floating_action_button_green.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  String pathImage1 = "assets/img/chiquinquira.jpg";

  CardImage(this.pathImage1);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 250.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 90.0, left: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage1)),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15, // degradado
                offset: Offset(0.0, 7.0) // posicion de sombra x-y
                )
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [
        card,
        FloatingActionButtonGreen(),
      ],
    );
  }
}
