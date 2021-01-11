import 'package:flutter/material.dart';
import './models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  final List<Transaction> _dataTransactions = [];

  void addTransaction() {
    if (titleController.text.isEmpty || amountController.text.isEmpty) {
      return print('tidak ada data');
    }

    _dataTransactions.add(
      Transaction(
        title: titleController.text,
        amount: double.parse(amountController.text),
      ),
    );
    print(titleController.text);
    print(amountController.text);
    titleController.clear();
    amountController.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expenses App'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Card(
              //   child: Text('Chart'),
              // ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Title',
                        ),
                        controller: titleController,
                        onSubmitted: (_) => addTransaction,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Amount',
                        ),
                        controller: amountController,
                        onSubmitted: (_) => addTransaction,
                      ),
                      FlatButton(
                        onPressed: addTransaction,
                        child: Text(
                          'Add Transaction',
                        ),
                        textColor: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Card(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Text(
                                '${_dataTransactions[index].amount.toStringAsFixed(2)}'),
                          ),
                          Column(
                            children: [
                              Text(_dataTransactions[index].title),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: _dataTransactions.length,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
