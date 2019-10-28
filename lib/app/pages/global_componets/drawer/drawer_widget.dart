import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(0.0),
            padding: EdgeInsets.all(0.0),
            height: 200.0,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: ListView(
                children: <Widget>[
                  new InkWell(
                    onTap: () => print('oi'),
                    child: new CircleAvatar(
                      radius: 60,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: new Text('data'),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
