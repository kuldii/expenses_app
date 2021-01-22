import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 10,
                width: 5,
                color: Colors.amber,
              ),
              Text("M"),
            ],
          ),
          Column(
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 10,
                width: 5,
                color: Colors.amber,
              ),
              Text("T"),
            ],
          ),
          Column(
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 10,
                width: 5,
                color: Colors.amber,
              ),
              Text("W"),
            ],
          ),
          Column(
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 10,
                width: 5,
                color: Colors.amber,
              ),
              Text("T"),
            ],
          ),
          Column(
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 10,
                width: 5,
                color: Colors.amber,
              ),
              Text("F"),
            ],
          ),
          Column(
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 10,
                width: 5,
                color: Colors.amber,
              ),
              Text("S"),
            ],
          ),
          Column(
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 10,
                width: 5,
                color: Colors.amber,
              ),
              Text("S"),
            ],
          ),
        ],
      ),
    );
  }
}
