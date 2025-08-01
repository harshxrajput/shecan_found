// test/widget_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shecan_found/screens/login.dart';
import 'package:shecan_found/main.dart';

void main() {
  testWidgets('Login screen loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const InternApp());
    expect(find.text('Fundraiser Intern Portal'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}