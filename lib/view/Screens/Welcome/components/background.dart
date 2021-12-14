import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: double.infinity,
        margin: EdgeInsets.only(top: size.height * 0.1),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            child,
          ],
        ));
  }
}
