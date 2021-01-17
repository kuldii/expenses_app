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
  final List<Transaction> dataTransaction = [
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

  void addNewTx(String titleTx, double amountTx) {
    setState(() {
      dataTransaction.add(Transaction(
        id: DateTime.now().toString(),
        title: titleTx,
        amount: amountTx,
        date: DateTime.now(),
      ));
    });
  }

  void deleteTx(String idTx) {
    setState(() {
      dataTransaction.removeWhere((element) => element.id == idTx);
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
                height: MediaQuery.of(context).size.height * 0.2,
                child: ChartWidget(),
              ),
              NewTransaction(addNewTx),
              ListTransactions(dataTransaction, deleteTx),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
