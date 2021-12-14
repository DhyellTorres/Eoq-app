import 'package:flutter/material.dart';
import 'package:flutter_eoq/view/Screens/Ask/components/bodyAsk.dart';

class AskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyAsk(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.send),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
