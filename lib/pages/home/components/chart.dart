import 'package:expenses_app/models/transaction.dart';
import 'package:expenses_app/pages/home/components/chartbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChartWidget extends StatelessWidget {
  final List<Transaction> recentTx;

  ChartWidget(this.recentTx);

  List<Map<String, Object>> get groupTx {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));

      double totalSum = 0.0;

      for (var i = 0; i < recentTx.length; i++) {
        if (recentTx[i].date.day == weekDay.day &&
            recentTx[i].date.month == weekDay.month &&
            recentTx[i].date.year == weekDay.year) {
          totalSum += recentTx[i].amount;
        }
      }

      // print(DateFormat.E().format(weekDay));
      // print(totalSum);

      return {
        'day': DateFormat.E().format(weekDay),
        'amount': totalSum,
      };
    }).reversed.toList();
  }

  double get persentaseFunction {
    return groupTx.fold(
      0.0,
      (previousValue, element) => (previousValue + element['amount']),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(groupTx);
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8.0),
      child: Row(
        children: groupTx.map(
          (data) {
            return Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChartBar(
                  data['day'],
                  data['amount'],
                  (data['amount'] as double) / persentaseFunction,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
