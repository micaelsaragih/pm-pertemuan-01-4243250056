import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_pertama/main.dart';

void main() {
  testWidgets('Menampilkan Hello World dan identitas mahasiswa', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const HelloApp());

    expect(find.text('Hello, World!'), findsOneWidget);
    expect(find.text('Micael Zecsen Saragih'), findsOneWidget);
    expect(find.text('NIM: 4243250056'), findsOneWidget);
    expect(find.text('Kelas: PSIK 24 D'), findsOneWidget);
    expect(find.text('Sapa Saya'), findsOneWidget);
  });

  testWidgets('Tombol Sapa Saya menampilkan pesan sapaan', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const HelloApp());

    const pesan = 'Halo, Micael! Selamat belajar Flutter!';
    expect(find.text(pesan), findsNothing);

    await tester.tap(find.text('Sapa Saya'));
    await tester.pumpAndSettle();

    expect(find.text(pesan), findsOneWidget);
  });
}
