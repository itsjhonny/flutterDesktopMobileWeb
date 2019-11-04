import 'package:bloc_pattern/bloc_pattern.dart';

class ShareVariables extends BlocBase {
  //dispose will be called automatically by closing its streams
  static int selectedIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
