part of 'auth.dart';

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
            Button('Log In'),
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
