import 'package:button_custom/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('BottonCustom renders correctly', (WidgetTester tester) async {
    // Crear el widget BottonCustom
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BottonCustom(
            textButton: 'Click Me!',
            funcOnTap: () {},
          ),
        ),
      ),
    );

    // Verificar que el texto del botón sea 'Click Me!'
    expect(find.text('Click Me!'), findsOneWidget);

    // Verificar que el widget InkWell exista
    expect(find.byType(InkWell), findsOneWidget);
  });

  testWidgets('BottonCustom onTap functionality', (WidgetTester tester) async {
    int counter = 0;

    // Crear el widget BottonCustom
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BottonCustom(
            textButton: 'Click Me!',
            funcOnTap: () {
              counter++;
            },
          ),
        ),
      ),
    );

    // Realizar un tap en el botón
    await tester.tap(find.byType(InkWell));
    await tester.pump();

    // Verificar que el contador haya incrementado
    expect(counter, 1);
  });
}


/*
En este archivo de prueba, se incluyen dos casos de prueba para el widget BottonCustom. 
El primer caso verifica que el widget se renderice correctamente y el segundo caso verifica que 
la función onTap se ejecute correctamente al hacer tap en el botón.
 */