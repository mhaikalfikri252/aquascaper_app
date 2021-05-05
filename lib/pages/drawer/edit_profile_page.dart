import 'package:flutter/material.dart';

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
                    'Send Request',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () async {
                    
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
