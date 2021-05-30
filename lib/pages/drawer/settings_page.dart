import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isSwitchedOne = false;
  bool _isSwitchedTwo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Matikan semua notifikasi',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Switch(
                  value: _isSwitchedOne,
                  onChanged: (value) {
                    setState(
                          () {
                        _isSwitchedOne = value;
                        print(_isSwitchedOne);
                      },
                    );
                  },
                  activeTrackColor: Colors.blue,
                  activeColor: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notifikasi jika alat tidak terhubung',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Switch(
                  value: _isSwitchedTwo,
                  onChanged: (value) {
                    setState(
                          () {
                        _isSwitchedTwo = value;
                        print(_isSwitchedTwo);
                      },
                    );
                  },
                  activeTrackColor: Colors.blue,
                  activeColor: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
