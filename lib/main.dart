import 'package:flutter/material.dart';
import 'package:app2/view/description_place.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final textLorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'app2',
        home: Scaffold(
            appBar: AppBar(
              title: Text("App DescPlace",
              textAlign: TextAlign.center,),
            ),
            body: new DescriptionPlace("Chiquinquira",5,textLorem)));
  }
}
