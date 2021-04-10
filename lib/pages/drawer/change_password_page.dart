part of 'drawer.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Button('Ubah Password'),
          ],
        ),
      ),
    );
  }
}
