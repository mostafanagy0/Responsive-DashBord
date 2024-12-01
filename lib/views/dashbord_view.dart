import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/adaptive_layout_widget.dart';
import 'package:resposive_dashbord/widgets/desktop_layout_widget.dart';

class DashbordView extends StatelessWidget {
  const DashbordView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      mobileLayout: (context) => const SizedBox(),
      tablitLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DesktopLayoutWidget(),
    );
  }
}
