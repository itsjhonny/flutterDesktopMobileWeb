import 'package:example_flutter/app/pages/global_componets/bottomNavBar/bottomNavBar_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:example_flutter/app/app_module.dart';

void main() {
  initModule(AppModule());
  BottomNavBarBloc bloc;

  setUp(() {
    bloc = AppModule.to.bloc<BottomNavBarBloc>();
  });

  group('BottomNavBarBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<BottomNavBarBloc>());
    });
  });
}
