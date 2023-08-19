import 'dart:math';

class RandomHelper {
  static final Random _rnd = Random();

  // string as random
  static String string([int length = 20]) {
    const chars =
        '_-AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890-_';

    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(
          _rnd.nextInt(chars.length),
        ),
      ),
    );
  }

  // int as random
  static integer() => _rnd.nextInt(994294967);
  static shortInteger() => _rnd.nextInt(99999);
}
