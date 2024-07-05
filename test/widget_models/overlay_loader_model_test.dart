import 'package:flutter_test/flutter_test.dart';
import 'package:kally_dish/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('OverlayLoaderModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
