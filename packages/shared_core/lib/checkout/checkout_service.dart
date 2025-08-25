import 'package:url_launcher/url_launcher.dart';
import '../core/http.dart';
class CheckoutSessionResp { final String url; CheckoutSessionResp(this.url); }
class CheckoutApi {
  Future<CheckoutSessionResp> createSession({required String orderId, required int totalMad, required String callbackScheme}) async {
    final res = await dio.post('/checkout/session', data: {
      'order_id': orderId,
      'amount_mad': totalMad,
      'callback_scheme': callbackScheme,
    });
    return CheckoutSessionResp(res.data['checkout_url'] as String);
  }
  static Future<void> open(String url) async { await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication); }
}
