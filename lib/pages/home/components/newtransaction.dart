import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  void addTransaction() {
    if (titleController.text.isEmpty || amountController.text.isEmpty) {
      titleController.clear();
      amountController.clear();
      return print("Data tidak lengkap!");
    }

    print(titleController.text);
    print(amountController.text);

    addTx(titleController.text, double.parse(amountController.text));

    titleController.clear();
    amountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
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
