import 'package:aquascaper_app/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Alert Page'),
      ),
    );
  }
}
