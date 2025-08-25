import 'package:flutter/material.dart';
import 'package:shared_ui/app_scaffold.dart';
void main()=>runApp(const MerchantApp());
class MerchantApp extends StatelessWidget{const MerchantApp({super.key});
  @override Widget build(BuildContext c){
    return MaterialApp(title:'GlovoLite – Merchant', home: const OrdersScreen());
  }}
class OrdersScreen extends StatelessWidget{
  const OrdersScreen({super.key});
  @override Widget build(BuildContext c){
    return const AppScaffold(title:'Bestellungen', child: Center(child: Text('Todo: New/Preparing/Ready')));
  }
}
