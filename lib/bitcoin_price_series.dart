import 'package:flutter/material.dart';

class BitcoinPriceSeries {
  final String month;
  final double price;
  final Color barColor;

  BitcoinPriceSeries({
    required this.month,
    required this.price,
    required this.barColor,
  });
}
