import 'package:example_flutter/app/pages/global_componets/bottomNavBar/bottomNavBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('BottomNavBarWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(BottomNavBarWidget()));
    final textFinder = find.text('BottomNavBar');
    expect(textFinder, findsOneWidget);
  });
}
