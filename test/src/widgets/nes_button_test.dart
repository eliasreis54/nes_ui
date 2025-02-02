import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nes_ui/nes_ui.dart';

void main() {
  group('NesButton', () {
    testWidgets('renders its child', (tester) async {
      var pressed = false;
      await tester.pumpWidget(
        MaterialApp(
          theme: flutterNesTheme(),
          home: NesButton(
            type: NesButtonType.primary,
            onPressed: () {
              pressed = true;
            },
            child: const Text('The Child'),
          ),
        ),
      );

      await tester.tap(find.text('The Child'));
      expect(pressed, isTrue);
    });
  });
}
