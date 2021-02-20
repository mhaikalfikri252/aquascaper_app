import 'package:aquascaper_app/widgets/password_text.dart';
import 'package:aquascaper_app/widgets/user_text.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 100,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Text('Register'),
                SizedBox(
                  height: 30,
                ),
                UserText(
                  icon: Icon(Icons.person),
                  text: 'Username',
                ),
                SizedBox(
                  height: 20,
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
                  height: 20,
                ),
                PasswordText(
                  icon: Icon(Icons.lock),
                  text: 'Confirm Password',
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
                      'Create Account',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/lgn'),
                  child: Text(
                    'Already have an account ? Login',
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
