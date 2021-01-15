import 'package:flutter/material.dart';
import '../models/transaction.dart';

class NewTransaction extends StatefulWidget {
  final List<Transaction> _dataTransaction;

  NewTransaction(this._dataTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  void addTransaction() {
    if (titleController.text.isEmpty || amountController.text.isEmpty) {
      return print("Data tidak lengkap!");
    }

    print(titleController.text);
    print(amountController.text);

    setState(() {
      widget._dataTransaction.add(
        Transaction(
          id: DateTime.now().toString(),
          title: titleController.text,
          amount: double.parse(amountController.text),
          date: DateTime.now(),
        ),
      );
    });
    titleController.clear();
    amountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Title",
              ),
              textInputAction: TextInputAction.next,
            ),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              textInputAction: TextInputAction.done,
              onEditingComplete: addTransaction,
            ),
            FlatButton(
              onPressed: addTransaction,
              child: Text(
                "Add Transaction",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
