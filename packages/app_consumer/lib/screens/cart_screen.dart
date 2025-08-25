import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/checkout/checkout_service.dart';
import 'package:shared_core/core/env.dart';
import 'package:shared_ui/app_scaffold.dart';

final totalMadProvider = StateProvider<int>((_) => 89);

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final total = ref.watch(totalMadProvider);
    return AppScaffold(title: 'Warenkorb', child: Column(children: [
      const ListTile(title: Text('Margherita x1'), trailing: Text('45 MAD')),
      const ListTile(title: Text('Cola x1'), trailing: Text('14 MAD')),
      const Spacer(),
      Padding(
        padding: const EdgeInsets.all(16),
        child: FilledButton(
          onPressed: () async {
            final api = CheckoutApi();
            final session = await api.createSession(orderId: 'demo123', totalMad: total, callbackScheme: Env.schemeConsumer);
            if (context.mounted) {
              context.go('/checkout?url=${Uri.encodeComponent(session.url)}');
            }
          },
          child: Text('Bezahle ${total} MAD'),
        ),
      )
    ]));
  }
}
