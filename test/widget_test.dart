import 'package:flutter_test/flutter_test.dart';
import 'package:menu_app/main.dart';

void main() {
  testWidgets('Menu app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MenuApp());

    // Verify that our menu title appears.
    expect(find.text('Cozy Corner Cafe Menu'), findsOneWidget);
  });
}
