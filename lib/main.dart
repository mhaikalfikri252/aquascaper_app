part of 'main_part.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/help': (context) => HelpPage(),
        '/settings': (context) => SettingsPage(),
        '/change': (context) => ChangePasswordPage(),
        '/edit': (context) => EditProfilePage(),
        '/tmp': (context) => Temperature(),
        '/ppm': (context) => Ppm(),
        '/tur': (context) => Turbidity(),
        '/phm': (context) => Phmeter(),
        '/fps': (context) => ForgotPasswordPage(),
        '/rgs': (context) => RegisterPage(),
        '/lgn': (context) => LoginPage(),
      },
    );
  }
}
