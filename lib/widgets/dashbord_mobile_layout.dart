import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/all_expeness_and_quick_invoce_section.dart';
import 'package:resposive_dashbord/widgets/income_section.dart';
import 'package:resposive_dashbord/widgets/my_card_and_transaction.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
        AllExpensessAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransctionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
