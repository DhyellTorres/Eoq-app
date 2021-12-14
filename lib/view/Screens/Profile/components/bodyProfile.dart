import 'package:flutter/material.dart';
import 'package:flutter_eoq/controller/google_sign_in.dart';
import 'package:flutter_eoq/view/Screens/Register/RegisterScreen.dart';
import 'package:flutter_eoq/view/Screens/Register/components/or_divider.dart';
import 'package:flutter_eoq/view/Screens/Register/components/socialIcons.dart';
import 'package:flutter_eoq/view/Screens/Welcome/components/background.dart';
import 'package:flutter_eoq/view/components/have_account_check.dart';
import 'package:flutter_eoq/view/components/rounded_button.dart';
import 'package:flutter_eoq/view/components/rounded_input_field.dart';
import 'package:flutter_eoq/view/components/rounded_password_field.dart';
import 'package:flutter_eoq/view/components/text_field_container.dart';
import 'package:flutter_eoq/view/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_eoq/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class BodyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bom ainda nao tem nada por aqui",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Colors.white),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "Sair",
              press: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
