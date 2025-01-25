import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/all_expenses_header.dart';
import 'package:resposive_dashbord/widgets/all_expenses_item_list_view.dart';
import 'package:resposive_dashbord/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView()
        ],
      ),
    );
  }
}
