import '../models/transaction.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  TransactionList({@required this.transactions});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: Text(
                  '\$${transactions[index].amount.toStringAsFixed(2)}',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2.0)),
                padding: EdgeInsets.all(10.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(transactions[index].title,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                  Text(DateFormat.yMMMd().format(transactions[index].dateTime),
                      style: TextStyle(color: Colors.grey))
                ],
              )
            ],
          ));
        },
        itemCount: transactions.length,
      ),
    );
  }
}
