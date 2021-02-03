import 'package:flutter/material.dart';
import 'package:app2/view/components_utils/card_image.dart';

class GradientBack extends StatelessWidget {
  String titleApp = "Religious Capital";

  GradientBack(this.titleApp);

  @override
  Widget build(BuildContext context) {
    final titleAppWidget = Container(
      //margin: EdgeInsets.only(top: 1.0),
      child: Text(
        titleApp,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lora",
            fontWeight: FontWeight.bold),
      ),
    );

    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.5],
            tileMode: TileMode.clamp),
      ),
      child: titleAppWidget,
      alignment: Alignment(-0.9, -0.6),
    );
  }
}
