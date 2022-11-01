import 'package:bloc_counter/app.dart';
import 'package:bloc_counter/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('counterApp', () {
    testWidgets("is a MaterialApp", (tester) async {
      expect(const CounterApp(), isA<MaterialApp>());
    });
    testWidgets("home is CounterPage", (tester) async {
      expect(const CounterApp().home, isA<CounterPage>());
    });
    testWidgets("renders counterPage", (tester) async {
      await tester.pumpWidget(const CounterApp());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
