import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:example_flutter/app/pages/global_componets/bottomNavBar/bottomNavBar_widget.dart';
import 'package:example_flutter/app/pages/home/home_page.dart';
import 'package:example_flutter/app/share/share_variables.dart';
import 'package:flutter/material.dart';

class BottomNavBarBloc extends BlocBase {
  final StreamController _streamController = StreamController();
  Sink get input => _streamController.sink;
  Stream get output => _streamController.stream;

  void onItemTapped(int index, context) {
    if (ShareVariables.selectedIndex == index) return;

    switch (index) {
      case 0:
        Navigator.of(context).popUntil((route) => route.isFirst);
        break;
      case 1:
        Navigator.push(
            context,
            MaterialPageRoute<Null>(
              builder: (context) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text('teste modal'),
                  ),
                  bottomNavigationBar: BottomNavBarWidget(),
                  body: Column(
                    children: <Widget>[Text('data')],
                  ),
                );
              },
              fullscreenDialog: true,
            ));

        break;
      case 2:
        print('2');
        break;
      default:
    }
    ShareVariables.selectedIndex = index;
    input.add(ShareVariables.selectedIndex);
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }
}
