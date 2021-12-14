import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_eoq/view/components/text_field_container.dart';
import 'package:flutter_eoq/constants.dart';
import 'package:flutter/widgets.dart';

class RoundedPasswordField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.hintText,
    this.inputFormatters,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textFieldContainer(
      child: TextField(
        controller: textEditingController,
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(Icons.lock, color: ligthPrimaryColor),
            suffixIcon: IconButton(
              color: ligthPrimaryColor,
              icon: Icon(Icons.visibility),
              onPressed: () {},
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
