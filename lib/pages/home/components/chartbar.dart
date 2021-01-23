import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double amount;
  final double persentase;

  ChartBar(this.label, this.amount, this.persentase);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          double.parse(amount.toString()).toString(),
        ),
        Container(
          height: 100,
          width: 20,
          color: Colors.amber,
        ),
        Text(label),
      ],
    );
  }
}
