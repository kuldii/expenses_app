import 'package:expenses_app/models/transaction.dart';
import 'package:expenses_app/pages/home/components/chart.dart';
import 'package:expenses_app/pages/home/components/listtransaction.dart';
import 'package:expenses_app/pages/home/components/newtransaction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transaction> _dataTransaction = [
    Transaction(
      id: DateTime.now().toString(),
      title: "New Shoes",
      amount: 10.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: DateTime.now().toString(),
      title: "New Boot",
      amount: 10.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: DateTime.now().toString(),
      title: "New Bag",
      amount: 10.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: DateTime.now().toString(),
      title: "New Tas",
      amount: 10.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: DateTime.now().toString(),
      title: "New Sprit",
      amount: 10.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTx(String titleTx, double amountTx) {
    setState(() {
      _dataTransaction.add(Transaction(
        id: DateTime.now().toString(),
        title: titleTx,
        amount: amountTx,
        date: DateTime.now(),
      ));
    });
  }

  void _deleteTx(String idTx) {
    setState(() {
      _dataTransaction.removeWhere((element) => element.id == idTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Expenses Apps",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                child: ChartWidget(),
              ),
              ListTransactions(_dataTransaction, _deleteTx),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (_) {
            return NewTransaction(_addNewTx);
          },
        ),
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
