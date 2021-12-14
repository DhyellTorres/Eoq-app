import 'package:flutter/material.dart';
import 'package:flutter_eoq/view/Screens/Logged/components/bottom_navigator_bar_maker.dart';
import 'package:flutter_eoq/view/Screens/Profile/components/bodyProfile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyProfile(),
      bottomNavigationBar: HomeScreen(),
    );
  }
}
