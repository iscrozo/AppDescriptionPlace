import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  /*
  _FloatingActionButtonGreenState createState() => _FloatingActionButtonGreenState();
  */
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreenState();
  }
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool _pressed = false;
  void onPressedFav() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: this._pressed == false
            ? Text("Agregaste Favorito")
            : Text("Eliminaste de tus favoritos"),
      ),
    );
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA56),
      mini: true, // boton mas pequeño
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(this._pressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}
