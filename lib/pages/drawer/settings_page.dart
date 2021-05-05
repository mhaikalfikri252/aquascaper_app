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
        padding: const EdgeInsets.only(
          left: 20,
          top: 30,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Matikan semua notifikasi',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 140,
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
              children: [
                Text(
                  'Notifikasi jika alat tidak terhubung',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 86,
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
