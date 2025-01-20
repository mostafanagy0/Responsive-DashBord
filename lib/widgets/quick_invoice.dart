import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/custom_background_container.dart';
import 'package:resposive_dashbord/widgets/latest_transaction_list_view.dart';
import 'package:resposive_dashbord/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [QuickInvoiceHeader(), LatestTransactionListView()],
    ));
  }
}
