import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/listtransaction.dart';
import '../widgets/newtransaction.dart';
import '../widgets/chart.dart';

class HomePage extends StatelessWidget {
  final List<Transaction> dataTransaction = [
    Transaction(
      id: "tx1",
      title: "Kopi",
      amount: 1.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "tx2",
      title: "Gula",
      amount: 2.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "tx3",
      title: "Teh",
      amount: 1.99,
      date: DateTime.now(),
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
          ListTransactions(dataTransaction),
        ],
      ),
    );
  }
}
