// NOT IN USE ANYMORE
import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key key}) : super(key: key);

  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
    final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New sunglasses', amount: 69.99, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      amount: txAmount,
      title: txTitle,
      date: DateTime.now(),
      );
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