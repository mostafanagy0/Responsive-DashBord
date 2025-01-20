import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/all_expenses.dart';
import 'package:resposive_dashbord/widgets/cutom_drawer.dart';
import 'package:resposive_dashbord/widgets/quick_invoice.dart';

class DashBordDesktopLayout extends StatelessWidget {
  const DashBordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice(),
              ],
            ))
      ],
    );
  }
}
