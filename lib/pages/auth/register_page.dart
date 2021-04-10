part of 'auth.dart';

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
               Button('Create Account'),
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
