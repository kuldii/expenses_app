import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 100,
                width: 20,
                color: Colors.amber,
              ),
              Text("M"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 100,
                width: 20,
                color: Colors.amber,
              ),
              Text("T"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 100,
                width: 20,
                color: Colors.amber,
              ),
              Text("W"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 100,
                width: 20,
                color: Colors.amber,
              ),
              Text("T"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 100,
                width: 20,
                color: Colors.amber,
              ),
              Text("F"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 100,
                width: 20,
                color: Colors.amber,
              ),
              Text("S"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "\$99.99",
              ),
              Container(
                height: 100,
                width: 20,
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
