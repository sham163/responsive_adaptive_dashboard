import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/widgets/all_expenses_header_widget.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        AllExpensesHeader()
      ],
    ),
  );
}
}