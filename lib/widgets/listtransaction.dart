import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListTransactions extends StatefulWidget {
  final List<Transaction> _dataTransaction;
  final Function deleteTx;

  ListTransactions(this._dataTransaction, this.deleteTx);

  @override
  _ListTransactionsState createState() => _ListTransactionsState();
}

class _ListTransactionsState extends State<ListTransactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget._dataTransaction.map((value) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // amount
                Container(
                  margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    "\$ " + value.amount.toStringAsPrecision(4),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                // detail
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat().format(value.date),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                // delete
                IconButton(
                  icon: Icon(
                    Icons.delete,
                  ),
                  onPressed: () {
                    widget.deleteTx(value.id);
                  },
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
