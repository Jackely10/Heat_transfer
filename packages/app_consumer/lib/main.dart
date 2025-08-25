import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  runApp(const ConsumerApp());
}

class ConsumerApp extends StatelessWidget {
  const ConsumerApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GlovoLite – Consumer',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0EA5E9)), useMaterial3: true),
      routerConfig: createRouter(),
    );
  }
}
