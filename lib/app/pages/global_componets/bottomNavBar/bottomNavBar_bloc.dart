import 'package:bloc_pattern/bloc_pattern.dart';

class BottomNavBarBloc extends BlocBase {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }
}
