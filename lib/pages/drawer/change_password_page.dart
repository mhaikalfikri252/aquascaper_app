import 'package:aquascaper_app/widgets/password_text.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // GlobalKey _scaffold = GlobalKey();

    return Scaffold(
      // key: _scaffold,
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            PasswordText(
              icon: Icon(Icons.lock_open),
              text: 'Password Lama',
            ),
            SizedBox(
              height: 20,
            ),
            PasswordText(
              icon: Icon(Icons.lock),
              text: 'Password Baru',
            ),
            SizedBox(
              height: 20,
            ),
            PasswordText(
              icon: Icon(Icons.lock),
              text: 'Konfirmasi Password',
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: 400,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.blue,
                elevation: 10,
                textColor: Colors.white,
                child: Text(
                  'Ubah Password',
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
