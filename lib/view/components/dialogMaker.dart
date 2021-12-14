import 'package:flutter/material.dart';
import 'package:flutter_eoq/view/Screens/Welcome/welcome_screen.dart';

Future<dynamic> dialogMaker(BuildContext context, Size size) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.grey[700],
        title: Container(
          width: size.width * 0.2,
          child: Image.asset(
            "assets/images/verify.png",
            fit: BoxFit.contain,
          ),
        ),
        content: Text(
          "Cadastro realizdo com sucesso!",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Ok",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()));
            },
          )
        ],
      );
    },
  );
}
