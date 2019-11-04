import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example_flutter/app/pages/global_componets/drawer/drawer_widget.dart';

main() {
  testWidgets('DrawerWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DrawerWidget()));
    final textFinder = find.text('Drawer');
    expect(textFinder, findsOneWidget);
  });
}
