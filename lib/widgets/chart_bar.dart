import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal);

  @override
  Widget build(BuildContext context) {
    // print(spendingPctOfTotal);
    return Column(
      children: <Widget>[
        FittedBox(child: Text('\$ ${spendingAmount.toStringAsFixed(0)}')),
        SizedBox(
          height: 6,
        ),
        Container(
          height: 80,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(220, 220, 200, 1),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text('$label'),
      ],
    );
  }
}
