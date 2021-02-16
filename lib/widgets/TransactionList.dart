import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './Transactionitem.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  final Function remove;
  TransactionList(this.transaction, this.remove);
  @override
  Widget build(BuildContext context) {
    return transaction.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: [
                Text(
                  'No transaction added yet',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.15,
                ),
                Container(
                  height: constraints.maxHeight * 0.6,
                  child: Image.asset('assets/images/waiting.png'),
                )
              ],
            );
          })
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return Transactionitem(transaction: transaction[index], remove: remove);
            },
            itemCount: transaction.length,
          );
  }
}

