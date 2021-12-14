import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eoq/view/Screens/Logged/components/divider.dart';

Widget ItenList(int index) {
  final user = FirebaseAuth.instance.currentUser!;
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(user.photoURL!),
    ),
    title: Text(
      user.displayName!,
      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    ),
    subtitle: Column(
      children: <Widget>[
        SizedBox(width: 10),
        Text(
          "Por enquanto é só um teste! sem perguntas.",
          overflow: TextOverflow.clip,
          maxLines: 5,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Icon(Icons.favorite, color: Colors.white),
            SizedBox(width: 15),
            SizedBox(width: 15),
            Icon(Icons.comment, color: Colors.white),
          ],
        ),
        OnDivider(),
      ],
    ),
  );
}
