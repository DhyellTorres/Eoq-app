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

class BodyAsk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController questionController;
    return Container(
      child: Center(
        child: TextField(
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          keyboardType: TextInputType.multiline,
          maxLines: null,
          textAlign: TextAlign.center,
          controller: questionController = TextEditingController(),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.redAccent,
                width: 5,
              ),
            ),
            hintText: 'Qual Sua dúvida?',
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
