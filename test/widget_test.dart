// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:f_testing_template/ui/pages/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('Widget login validación @ email', (WidgetTester tester) async {
    await tester.pumpWidget(
      const GetMaterialApp(
        home: LoginScreen(email: 'test@example.com', password: '123456'),
      ),
    );

    final emailField = find.byKey(const Key('TextFormFieldLoginEmail'));
    final submitButton = find.byKey(const Key('ButtonLoginSubmit'));

    await tester.enterText(emailField, 'usuario_invalido');
    await tester.tap(submitButton);
    await tester.pump();

    expect(find.text('Enter valid email address'), findsOneWidget);
  });

  testWidgets('Widget login validación campo vacio email',
      (WidgetTester tester) async {});

  testWidgets('Widget login validación número de caracteres password',
      (WidgetTester tester) async {});

  testWidgets('Widget login validación campo vacio password',
      (WidgetTester tester) async {});

  testWidgets(
      'Widget login autenticación exitosa', (WidgetTester tester) async {});

  testWidgets(
      'Widget login autenticación no exitosa', (WidgetTester tester) async {});

  testWidgets(
      'Widget signUp validación @ email', (WidgetTester tester) async {});

  testWidgets('Widget signUp validación campo vacio email',
      (WidgetTester tester) async {});

  testWidgets('Widget signUp validación número de caracteres password',
      (WidgetTester tester) async {});

  testWidgets('Widget signUp validación campo vacio password',
      (WidgetTester tester) async {});

  testWidgets(
      'Widget home visualización correo', (WidgetTester tester) async {});

  testWidgets('Widget home nevegación detalle', (WidgetTester tester) async {});

  testWidgets('Widget home logout', (WidgetTester tester) async {});
}
