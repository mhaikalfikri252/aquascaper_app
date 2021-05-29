import 'package:aquascaper_app/models/user_model.dart';
import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  final UserModel _userModel;

  HeaderDrawer(this._userModel);

  @override
  _HeaderDrawerState createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget._userModel.name,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
            Text(
              widget._userModel.email,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
