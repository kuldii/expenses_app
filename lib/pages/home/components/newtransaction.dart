import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  DateTime _selectDate;

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
      if (_selectDate == null) {
        return print("Tidak terdapat date !");
      }
      widget.addTx(enterTitle, enterAmount, _selectDate);
      Navigator.of(context).pop();
    } else {
      return print("Tidak ada amount!");
    }
  }

  void datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        _selectDate = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          TextField(
            controller: titleController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Title",
            ),
            textInputAction: TextInputAction.next,
            maxLength: 20,
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
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  (_selectDate == null)
                      ? "No date chosen!"
                      : _selectDate.toString(),
                ),
                FlatButton(
                  onPressed: datePicker,
                  child: Text(
                    "Choose date",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: addTransaction,
            child: Text(
              "Add Transaction",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
