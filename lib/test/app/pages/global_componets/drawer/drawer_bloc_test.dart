import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:example_flutter/app/pages/global_componets/drawer/drawer_bloc.dart';
import 'package:example_flutter/app/app_module.dart';

void main() {
  initModule(AppModule());
  DrawerBloc bloc;

  setUp(() {
    bloc = AppModule.to.bloc<DrawerBloc>();
  });

  group('DrawerBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<DrawerBloc>());
    });
  });
}
