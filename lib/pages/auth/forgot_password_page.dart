part of 'auth.dart';

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
            Button('Send request email reset')
          ],
        ),
      ),
    );
  }
}
