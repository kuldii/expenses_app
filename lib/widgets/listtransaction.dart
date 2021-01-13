import 'package:expenses_app/models/transaction.dart';
import 'package:flutter/material.dart';

class ListTransactions extends StatelessWidget {
  final List<Transaction> _dataTransaction;

  ListTransactions(this._dataTransaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _dataTransaction.map((value) {
        return Card(
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
                color: Colors.amber,
                child: Text(
                  "\$ " + value.amount.toStringAsFixed(2),
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
                    value.date.toString(),
                  ),
                ],
              ),
              // delete
              IconButton(
                icon: Icon(
                  Icons.delete,
                ),
                onPressed: () {},
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
