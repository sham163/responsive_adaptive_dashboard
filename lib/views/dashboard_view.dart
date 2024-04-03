import 'package:flutter/material.dart';
import 'package:responsive_adaptive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_adaptive_dashboard/widgets/desktop_dashboard_widget.dart';


class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopDashboard(),
        ),
        );
  }
}