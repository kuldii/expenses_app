import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/listtransaction.dart';
import '../widgets/newtransaction.dart';
import '../widgets/chart.dart';

class HomePage extends StatelessWidget {
  final List<Transaction> dataTransaction = [
    Transaction(
      title: "Kopi",
      amount: 1.99,
    ),
    Transaction(
      title: "Gula",
      amount: 2.99,
    ),
    Transaction(
      title: "Teh",
      amount: 1.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Expenses Apps",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ChartWidget(),
          NewTransaction(),
          ListTransactions(),
        ],
      ),
    );
  }
}
