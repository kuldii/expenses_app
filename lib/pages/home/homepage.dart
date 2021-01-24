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
  final List<Transaction> _dataTransaction = [];

  void _addNewTx(String titleTx, double amountTx, DateTime selectDate) {
    setState(() {
      _dataTransaction.add(Transaction(
        id: DateTime.now().toString(),
        title: titleTx,
        amount: amountTx,
        date: selectDate,
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
                child: ChartWidget(_dataTransaction),
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
