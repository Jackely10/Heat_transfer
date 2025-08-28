import 'package:flutter/material.dart';
import 'package:shared_ui/app_scaffold.dart';

void main() => runApp(const CourierApp());

class CourierApp extends StatelessWidget {
  const CourierApp({super.key});
  @override
  Widget build(BuildContext c) {
    return MaterialApp(title: 'GlovoLite – Courier', home: const JobsScreen());
  }
}

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});
  @override
  Widget build(BuildContext c) {
    return const AppScaffold(
      title: 'Offene Aufträge',
      child: Center(child: Text('Todo: Nearby Jobs')),
    );
  }
}
