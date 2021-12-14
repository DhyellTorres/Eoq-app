import 'package:flutter/material.dart';

class OnDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.9,
      child: Row(children: <Widget>[
        builderDivider(size),
        builderDivider(size),
      ]),
    );
  }

  Expanded builderDivider(Size size) {
    return Expanded(
      child: Divider(
        color: Colors.white,
        height: size.height * 0.01,
      ),
    );
  }
}
