import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        body: Center(
          child: Text('Hello Wolrd !'),
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
