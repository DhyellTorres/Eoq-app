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

class BodyWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController emailController;
    TextEditingController passwordController;
    return Background(
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          Text(
            "Bem vindo ao E o Que?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Positioned(
                top: size.height * 0.23,
                child: Container(
                  width: size.width * 0.5,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            inputController: emailController = TextEditingController(),
            hintText: "Seu email",
            onChanged: (value) {},
            icon: Icons.email,
            enableSuggestions: false,
          ),
          RoundedPasswordField(
            hintText: "Sua senha",
            onChanged: (value) {},
            textEditingController: passwordController = TextEditingController(),
          ),
          RoundedButton(
            press: () {},
            text: 'Login',
          ),
          SizedBox(height: size.height * 0.02),
          HaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RegisterScreen();
                  },
                ),
              );
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcons(
                iconScr: 'assets/images/facebookLogo.png',
                press: () {},
              ),
              SocialIcons(
                iconScr: 'assets/images/googleLogo.png',
                press: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.googleLogin();
                },
              ),
            ],
          )
        ])));
  }
}
