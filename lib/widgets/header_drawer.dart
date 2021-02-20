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
            Container(
              width: 70,
              height: 70,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Hai, M Haikal Fikri'),
          ],
        ),
      ),
    );
  }
}
