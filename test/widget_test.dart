import 'package:flutter_test/flutter_test.dart';
import 'package:noise_clicker/main.dart';

void main() {
  testWidgets('shows the app name', (WidgetTester tester) async {
    await tester.pumpWidget(const NoiseClickerApp());

    expect(find.text('NoiseClicker'), findsOneWidget);
  });
}
