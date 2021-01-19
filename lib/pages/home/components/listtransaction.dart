import '../../../models/transaction.dart';
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
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.5,
        child: ListView.builder(
          itemBuilder: (ctx, idx) {
            return Card(
              elevation: 2,
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
                        "\$ " +
                            widget._dataTransaction[idx].amount
                                .toStringAsPrecision(4),
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
                          widget._dataTransaction[idx].title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat()
                              .format(widget._dataTransaction[idx].date),
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
                        widget.deleteTx(widget._dataTransaction[idx].id);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: widget._dataTransaction.length,
        ),
      ),
    );
  }
}
