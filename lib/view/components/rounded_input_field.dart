import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_eoq/view/components/text_field_container.dart';
import 'package:flutter_eoq/constants.dart';
import 'package:flutter/widgets.dart';

class RoundedInputField extends StatelessWidget {
  final TextEditingController inputController;
  final List<TextInputFormatter>? inputFormatters;
  final bool enableSuggestions;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
    required this.enableSuggestions,
    this.inputFormatters,
    required this.inputController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textFieldContainer(
      child: TextField(
        controller: inputController,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon, color: ligthPrimaryColor),
          labelText: hintText,
          border: UnderlineInputBorder(),
        ),
      ),
    );
  }
}
