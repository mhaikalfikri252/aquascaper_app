import 'package:aquascaper_app/services/auth_services.dart';
import 'package:aquascaper_app/widgets/drawer_item.dart';
import 'package:aquascaper_app/widgets/header_drawer.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              HeaderDrawer(),
              DrawerItem(
                icon: Icons.edit,
                text: 'Edit Profile',
                onTap: () => Navigator.pushNamed(context, '/edit'),
              ),
              DrawerItem(
                icon: Icons.lock,
                text: 'Change Password',
                onTap: () => Navigator.pushNamed(context, '/change'),
              ),
              DrawerItem(
                icon: Icons.person,
                text: 'About',
                onTap: () => Navigator.pushNamed(context, '/about'),
              ),
              Divider(),
              DrawerItem(
                icon: Icons.help,
                text: 'Help',
                onTap: () => Navigator.pushNamed(context, '/help'),
              ),
              DrawerItem(
                icon: Icons.settings,
                text: 'Settings',
                onTap: () => Navigator.pushNamed(context, '/settings'),
              ),
              DrawerItem(
                icon: Icons.exit_to_app,
                text: 'Logout',
                onTap: () {
                  AuthServices.signOut();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
