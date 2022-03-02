import 'package:archdeptkonkan/res/color_app.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorApp.primaryColor,
        accentColor: ColorApp.accentColor,
      ),
      home: HomeScreen(),
    );
  }
}

