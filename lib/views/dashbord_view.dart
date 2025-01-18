import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/adaptive_layout_widget.dart';
import 'package:resposive_dashbord/widgets/dashbord_desktop_layout.dart';

class DashBordView extends StatelessWidget {
  const DashBordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const SizedBox(),
        tablitLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashBordDesktopLayout(),
      ),
    );
  }
}
