import 'package:flutter/material.dart';
import 'package:flutter_eoq/view/Screens/Logged//components/body.dart';
import 'package:flutter_eoq/view/Screens/Logged/components/bottom_navigator_bar_maker.dart';

class LoggedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Image.asset(
          'assets/images/logo.png',
          height: 40,
        ),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: BottomBarMaker(),
    );
  }
}
