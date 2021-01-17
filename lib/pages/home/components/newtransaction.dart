import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  void addTransaction() {
    final enterTitle = titleController.text;
    if (enterTitle.isEmpty) {
      return print("Tidak ada title!");
    }
    if (amountController.text.isNotEmpty) {
      final enterAmount = double.parse(amountController.text);
      if (enterAmount < 0.00) {
        return print("Nilai amount harus lebih dari 0 !");
      }
      addTx(enterTitle, enterAmount);
    } else {
      return print("Tidak ada amount!");
    }
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
              onSubmitted: (_) => addTransaction(),
            ),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => addTransaction(),
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
