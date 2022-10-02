import 'package:flutter/material.dart';
import 'package:flutter_expense_app/constants/app_constants.dart';
import 'package:flutter_expense_app/models/transaction.dart';
import 'package:flutter_expense_app/widgets/transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;
  final Function deleteTx;
  const TransactionList({
    super.key,
    required this.userTransactions,
    required this.deleteTx,
  });
  @override
  Widget build(BuildContext context) {
    return userTransactions.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: [
                Text(
                  AppConstants.noTransactionMsg,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: constraints.maxHeight * 0.6,
                  child: Image.asset(
                    AppConstants.waitingImagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          })
        : ListView.builder(
            itemCount: userTransactions.length,
            itemBuilder: ((context, index) {
              return TransactionItem(
                transaction: userTransactions[index],
                deleteTx: deleteTx,
              );
            }),
          );
  }
}
