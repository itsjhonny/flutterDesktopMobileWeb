import 'package:example_flutter/app/pages/global_componets/bottomNavBar/bottomNavBar_widget.dart';
import 'package:example_flutter/app/pages/global_componets/drawer/drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: BottomNavBarWidget(),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
