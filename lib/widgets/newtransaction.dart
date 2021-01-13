import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
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
