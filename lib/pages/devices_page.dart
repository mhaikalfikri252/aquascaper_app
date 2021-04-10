part of 'pages.dart';

class DevicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devices'),
      ),
      drawer: MainDrawer(),
      body: Container(
        margin: EdgeInsets.only(
          left: 1,
          top: 10,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      CardOne(
                        bgColor: Colors.red,
                        txtTitle: 'Temperature',
                        txtDesc: '22°C',
                        page: '/tmp',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CardOne(
                        bgColor: Colors.orange,
                        txtTitle: 'pH Meter',
                        txtDesc: '6,0',
                        page: '/phm',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CardOne(
                        bgColor: Colors.greenAccent[700],
                        txtTitle: 'Turbidity',
                        txtDesc: '20NTU',
                        page: '/tur',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CardOne(
                        bgColor: Colors.blue,
                        txtTitle: 'PPM',
                        txtDesc: '40',
                        page: '/ppm',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CardTwo(
                        sideColor: Colors.blueGrey,
                        txtTitle: 'LED Lamp',
                        roundColor: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CardTwo(
                        txtTitle: 'Fan',
                        sideColor: Colors.teal,
                        roundColor: Colors.yellow,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: CardTwo(
                      txtTitle: 'Selenoid',
                      sideColor: Colors.lightBlue,
                      roundColor: Colors.yellow,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Water Condition',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Good',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
