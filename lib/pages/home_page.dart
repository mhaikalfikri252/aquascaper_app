part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _navigation = <Widget>[
    DevicesPage(),
    AlertPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: _navigation[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.blue,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.phone_iphone,
                  size: 35,
                ),
                label: 'Devices',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notification_important,
                  size: 35,
                ),
                label: 'Alert',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5,
          ),
        ),
      ),
    );
  }
}
