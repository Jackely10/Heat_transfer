import 'package:go_router/go_router.dart';
import 'screens/home_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/checkout_webview.dart';

GoRouter createRouter() => GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/', builder: (c,s) => const HomeScreen()),
  GoRoute(path: '/cart', builder: (c,s) => const CartScreen()),
  GoRoute(path: '/checkout', builder: (c,s) => CheckoutWebView(url: s.uri.queryParameters['url'] ?? '')),
]);
