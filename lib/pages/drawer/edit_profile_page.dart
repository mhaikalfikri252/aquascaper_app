part of 'drawer.dart';

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
              height: 100,
            ),
            Container(
              width: 360,
              child: TextField(),
            ),
            SizedBox(
              height: 70,
            ),
            Button('Edit Profile'),
          ],
        ),
      ),
    );
  }
}
