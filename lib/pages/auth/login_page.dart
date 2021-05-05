import 'package:aquascaper_app/services/auth_services.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


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
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Email',
                hintText: 'Email',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Password',
                hintText: 'Password',
              ),
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
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  elevation: 10,
                  textStyle: TextStyle(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () async {
                  await AuthServices.signIn(
                    emailController.text.trim(),
                    passwordController.text.trim(),
                  );
                },
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
