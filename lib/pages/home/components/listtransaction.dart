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
    return (widget._dataTransaction.isEmpty)
        ? Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "There is no data.",
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    child: Image.asset(
                      "assets/images/nodata.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          )
        : Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                itemBuilder: (ctx, idx) {
                  return Card(
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        child: FittedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "\$${widget._dataTransaction[idx].amount}",
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        "${widget._dataTransaction[idx].title}",
                      ),
                      subtitle: Text(
                        "${DateFormat().format(widget._dataTransaction[idx].date)}",
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () => widget.deleteTx(
                          widget._dataTransaction[idx].id,
                        ),
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
