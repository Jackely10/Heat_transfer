import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_ui/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AppScaffold(title: 'Restaurants', child: ListView(children: [
      ListTile(title: const Text('Pizzeria Amine'), subtitle: const Text('Italienisch'), onTap: () => context.go('/cart')),
      ListTile(title: const Text('Pharma Sara'), subtitle: const Text('Apotheke'), onTap: () => context.go('/cart')),
    ]));
  }
}
