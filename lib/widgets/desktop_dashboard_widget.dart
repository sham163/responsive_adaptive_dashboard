import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_dashboard/widgets/all_expenses_widget.dart';
import 'package:responsive_adaptive_dashboard/widgets/custom_drawer_widget.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [Expanded(child: AllExpenses())],
          ),
        )
      ],
    );
  }
}
