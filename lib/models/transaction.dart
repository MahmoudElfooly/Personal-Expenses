import 'package:flutter/cupertino.dart';

class Transaction {
  final String title;
  final double amount;
  final DateTime date;
  final String iD;
  Transaction(
      {@required this.title,
      @required this.amount,
      @required this.date,
      @required this.iD});
}
