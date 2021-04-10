import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
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
            Text('Hai, Rafiki'),
          ],
        ),
      ),
    );
  }
}
