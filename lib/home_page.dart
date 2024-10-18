import 'package:flutter/material.dart';
import 'bitcoin_bar_chart.dart';
import 'bitcoin_price_series.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BitcoinPriceSeries> bitcoinData = [
      BitcoinPriceSeries(month: 'Jan', price: 50000, barColor: Colors.red),
      BitcoinPriceSeries(month: 'Feb', price: 60000, barColor: Colors.blue),
      BitcoinPriceSeries(month: 'Mar', price: 58000, barColor: Colors.green),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bitcoin price from Jan to March (2024)"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BitcoinBarChart(data: bitcoinData),
          const SizedBox(height: 20),
          BitcoinPieChart(data: bitcoinData),
        ],
      ),
    );
  }
}