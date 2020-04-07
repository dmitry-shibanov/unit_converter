import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_converter/main.dart';

main(){
  testWidgets("at least 3 items are visible", (WidgetTester tester){

  });

  testWidgets("find first item", (WidgetTester tester){

  });

  testWidgets("scroll to the bottom", (WidgetTester tester){

  });

  testWidgets("click on item", (WidgetTester tester) async {
    await tester.pumpWidget(UnitConverterApp());
    Finder firstItem = find.byKey(Key("item 1"));
    expect(firstItem, findsOneWidget);
    await tester.tap(firstItem);
    await tester.pumpAndSettle();
  });

  testWidgets("bottom card", (WidgetTester tester) async {

  });
}