import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  static CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Hai, '),
          ],
        ),
      ),
    );
  }
}
