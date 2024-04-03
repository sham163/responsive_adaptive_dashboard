import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses',
        style: AppStyles.styleSemiBold20,
        )
      ],
    );
  }
}