import 'package:aquascaper_app/widgets/password_text.dart';
import 'package:aquascaper_app/widgets/user_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login'),
            SizedBox(
              height: 30,
            ),
            UserText(
              icon: Icon(Icons.email),
              text: 'Email',
            ),
            SizedBox(
              height: 20,
            ),
            PasswordText(
              icon: Icon(Icons.lock),
              text: 'Password',
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/fps'),
              child: Container(
                margin: EdgeInsets.only(left: 235),
                child: Text('Forgot Password ?'),
              ),
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
                  'Log In',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/rgs'),
              child: Text(
                'Don\'t have an account ? Register',
              ),
            )
          ],
        ),
      ),
    );
  }
}
