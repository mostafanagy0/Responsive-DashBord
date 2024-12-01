import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/cutom_drawer.dart';

class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        )
      ],
    );
  }
}
