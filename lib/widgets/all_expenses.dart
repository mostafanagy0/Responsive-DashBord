import 'package:flutter/material.dart';
import 'package:resposive_dashbord/models/all_expenses_item_model.dart';
import 'package:resposive_dashbord/utils/assets.dart';
import 'package:resposive_dashbord/widgets/all_expenses_header.dart';
import 'package:resposive_dashbord/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: const Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItem(
              itemModel: AllExpensessItemModel(
                  image: Assets.imagesIncome,
                  title: 'Income',
                  date: 'April 2021',
                  price: r'$20.129'))
        ],
      ),
    );
  }
}
