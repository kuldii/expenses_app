import 'package:flutter/material.dart';
import '../widgets/listtransaction.dart';
import '../widgets/newtransaction.dart';
import '../widgets/chart.dart';

class HomePage extends StatelessWidget {
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
