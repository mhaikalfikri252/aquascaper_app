import 'package:aquascaper_app/widgets/user_text.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            UserText(
              icon: Icon(Icons.email),
              text: 'Email',
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 360,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.blue,
                elevation: 10,
                textColor: Colors.white,
                child: Text(
                  'Send request email reset',
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
