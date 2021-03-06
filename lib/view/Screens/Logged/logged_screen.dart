import 'package:flutter/material.dart';
import 'package:flutter_eoq/view/Screens/Ask/ask_screen.dart';
import 'package:flutter_eoq/view/Screens/Logged/components/bodyLogged.dart';

import 'package:flutter_eoq/view/Screens/Logged/components/bottom_navigator_bar_maker.dart';

class LoggedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyLogged(),
      bottomNavigationBar: HomeScreen(),
    );
  }
}
