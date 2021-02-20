import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 70,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 100,
                ),
                child: Icon(
                  Icons.photo_camera,
                  size: 30,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              child: TextField(),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 50,
              width: 300,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.blue,
                elevation: 10,
                textColor: Colors.white,
                child: Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
