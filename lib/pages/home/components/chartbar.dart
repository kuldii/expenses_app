import 'dart:math';

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
          "${amount.toStringAsFixed(0)}",
          maxLines: 1,
        ),
        Transform.rotate(
          angle: pi,
          child: Container(
            height: 100,
            width: 20,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: persentase.isNaN ? 0.0 : persentase,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(label),
      ],
    );
  }
}
