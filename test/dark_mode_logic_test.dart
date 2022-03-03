import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dark_mode_logic/dark_mode_logic.dart';

void main() {
  testWidgets(
    'Can return default dark mode color',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LayoutBuilder(
            builder: (context, constraints) => Icon(
              Icons.abc,
              color: ColorGate.byMode(
                  context: context, lightModeColor: Colors.blue),
            ),
          ),
          theme: ThemeData(
            brightness: Brightness.dark,
          ),
        ),
      );

      expect(
          (tester.firstWidget(find.byType(Icon)) as Icon).color, Colors.white);
    },
  );

  testWidgets(
    'Can return dark mode color',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LayoutBuilder(
            builder: (context, constraints) => Icon(
              Icons.abc,
              color: ColorGate.byMode(
                  context: context,
                  lightModeColor: Colors.blue,
                  darkModeColor: Colors.brown),
            ),
          ),
          theme: ThemeData(
            brightness: Brightness.dark,
          ),
        ),
      );

      expect(
          (tester.firstWidget(find.byType(Icon)) as Icon).color, Colors.brown);
    },
  );

  testWidgets(
    'Can return default mode color',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LayoutBuilder(
            builder: (context, constraints) => Icon(
              Icons.abc,
              color: ColorGate.byMode(
                  context: context, lightModeColor: Colors.blue),
            ),
          ),
          theme: ThemeData(
            brightness: Brightness.light,
          ),
        ),
      );

      expect(
          (tester.firstWidget(find.byType(Icon)) as Icon).color, Colors.blue);
    },
  );
}
