import 'package:aquascaper_app/pages/auth/forgot_password_page.dart';
import 'package:aquascaper_app/pages/auth/login_page.dart';
import 'package:aquascaper_app/pages/auth/register_page.dart';
import 'package:aquascaper_app/pages/devices/phmeter.dart';
import 'package:aquascaper_app/pages/devices/ppm.dart';
import 'package:aquascaper_app/pages/devices/turbidity.dart';
import 'package:aquascaper_app/pages/devices/temperature.dart';
import 'package:aquascaper_app/pages/drawer/about_page.dart';
import 'package:aquascaper_app/pages/drawer/change_password_page.dart';
import 'package:aquascaper_app/pages/drawer/edit_profile_page.dart';
import 'package:aquascaper_app/pages/drawer/help_page.dart';
import 'package:aquascaper_app/pages/drawer/settings_page.dart';
import 'package:aquascaper_app/pages/home_page.dart';
import 'package:aquascaper_app/pages/wrapper.dart';
import 'package:aquascaper_app/services/auth_services.dart';
import 'package:aquascaper_app/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
     value: AuthServices.userStream,
     initialData: null,
      child: MaterialApp(
        home: Wrapper(),
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
      ),
    );
  }
}
