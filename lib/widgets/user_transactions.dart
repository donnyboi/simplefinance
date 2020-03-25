import 'package:flutter/material.dart';

import './new_transactions.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoe', amount: 69.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'Grocery', amount: 16.66, date: DateTime.now())
  ];

  void _addNewTransaction(String titletx, double amounttx) {
    final newTx = Transaction(
        title: titletx,
        amount: amounttx,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}
