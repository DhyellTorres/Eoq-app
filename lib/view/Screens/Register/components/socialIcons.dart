import 'package:flutter/material.dart';

class SocialIcons extends StatelessWidget {
  final String iconScr;
  final Function press;
  const SocialIcons({
    Key? key,
    required this.iconScr,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          shape: BoxShape.circle,
        ),
        child: new Image.asset(
          iconScr,
          height: size.height * 0.05,
          width: size.height * 0.05,
        ),
      ),
    );
  }
}
