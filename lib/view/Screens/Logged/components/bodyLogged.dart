import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eoq/controller/google_sign_in.dart';
import 'package:flutter_eoq/view/Screens/Logged/components/background.dart';
import 'package:flutter_eoq/view/Screens/Logged/components/bottom_navigator_bar_maker.dart';
import 'package:flutter_eoq/view/Screens/Logged/components/iten_list_builder.dart';
import 'package:flutter_eoq/view/components/rounded_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class BodyLogged extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: List.generate(5, (int index) {
              return ItenList(index);
            }),
          ),
        ],
      ),
    );
  }
}
