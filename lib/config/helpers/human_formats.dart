import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadableNumber(double number) {
    return NumberFormat.compact(explicitSign: false).format(number);
  }
}
