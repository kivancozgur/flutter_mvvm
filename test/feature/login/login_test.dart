import 'package:flutter_test/flutter_test.dart';

main() {
  setUp(() {
    print("Here");
  });

  test("User Login Test", () {
    final isUserLogin = true;

    expect(isUserLogin, isTrue);
  });

  group("User Login Fail Test", () {
    test("User Register Test ", () {
      final isUserLogin = true;

      expect(isUserLogin, isTrue);
    });
    test("User Test", () {
      final isUserLogin = true;

      expect(isUserLogin, isTrue);
    });
  });
}
