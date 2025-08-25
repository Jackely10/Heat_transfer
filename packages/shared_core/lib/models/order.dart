import 'package:equatable/equatable.dart';
class Order extends Equatable {
  final String id;
  final String merchantId;
  final String status; // placed, payment_confirmed, courier_assigned, delivered …
  final int itemsAmountMad;
  final int deliveryFeeMad;
  final int totalMad;
  final double pickupLat, pickupLon, dropLat, dropLon;
  const Order({
    required this.id, required this.merchantId, required this.status,
    required this.itemsAmountMad, required this.deliveryFeeMad, required this.totalMad,
    required this.pickupLat, required this.pickupLon, required this.dropLat, required this.dropLon,
  });
  @override
  List<Object?> get props => [id, status, totalMad];
}
