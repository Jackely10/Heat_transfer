import 'package:flutter_dotenv/flutter_dotenv.dart';
class Env {
  static String get apiBaseUrl => dotenv.env['API_BASE_URL'] ?? '';
  static String get schemeConsumer => dotenv.env['SCHEME_CONSUMER'] ?? 'glovolitec';
  static String get schemeCourier  => dotenv.env['SCHEME_COURIER']  ?? 'glovolitecourier';
  static String get schemeMerchant => dotenv.env['SCHEME_MERCHANT'] ?? 'glovolitemerchant';
}
