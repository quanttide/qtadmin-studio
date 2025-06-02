import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:qtadmin_studio/widgets/navigation_widget.dart';

void main() {
  testWidgets('NavigationWidget displays list items', (WidgetTester tester) async {
    // Build our widget
    await tester.pumpWidget(NavigationWidget());

    // Verify list items existence
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(ListTile), findsNWidgets(3)); // Assuming 3 navigation items
  });

  testWidgets('NavigationWidget handles route navigation', (WidgetTester tester) async {
    // 在测试中包裹MaterialApp来提供导航上下文
    await tester.pumpWidget(MaterialApp(
      home: NavigationWidget(),
    ));

    // Tap the first list item and verify navigation
    await tester.tap(find.byType(ListTile).first);
    await tester.pumpAndSettle();

    // 直接通过tester获取正确上下文
    expect(ModalRoute.of(tester.element(find.byType(ListTile)))!.settings.name, '/home');
  });
}