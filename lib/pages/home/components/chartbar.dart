import 'dart:math';

import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double amount;
  final double persentase;

  ChartBar(this.label, this.amount, this.persentase);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 18,
            child: FittedBox(
              child: Text(
                "\$${amount.toStringAsFixed(0)}",
              ),
            ),
          ),
          Transform.rotate(
            angle: pi,
            child: Container(
              height: constraints.maxHeight * 0.6,
              width: 20,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: persentase.isNaN ? 0.0 : persentase,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(2),
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
    });
  }
}
