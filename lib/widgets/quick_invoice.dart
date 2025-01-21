import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/latest_transaction_section.dart';
import 'package:resposive_dashbord/widgets/quick_invoce_form.dart';
import 'package:resposive_dashbord/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransction(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForm()
      ],
    );
  }
}
