import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: _onItemTapped,
    );
  }
}
