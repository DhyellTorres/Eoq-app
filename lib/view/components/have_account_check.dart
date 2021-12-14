import 'package:flutter/material.dart';
import 'package:flutter_eoq/constants.dart';
import 'package:flutter/widgets.dart';

class HaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const HaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Não tem uma conta? " : "Já tem uma conta? ",
          style: TextStyle(color: basePrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Cadastre-se" : "Login",
            style: TextStyle(color: buttonColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
