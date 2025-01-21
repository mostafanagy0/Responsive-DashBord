import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/cutom_drawer.dart';
import 'package:resposive_dashbord/widgets/midell_Section.dart';
import 'package:resposive_dashbord/widgets/my_card_section.dart';

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
            child: SingleChildScrollView(
              child: AllExpensesAndQuickInvoiceSection(),
            )),
        SizedBox(
          width: 24,
        ),
        Expanded(child: MyCardSection())
      ],
    );
  }
}
