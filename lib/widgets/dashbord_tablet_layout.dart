import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/cutom_drawer.dart';
import 'package:resposive_dashbord/widgets/dashbord_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: DashBoardMobileLayout(),
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
