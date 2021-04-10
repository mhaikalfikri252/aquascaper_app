part of 'pages.dart';

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
