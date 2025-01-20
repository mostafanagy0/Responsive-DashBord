import 'package:flutter/material.dart';
import 'package:resposive_dashbord/models/all_expenses_item_model.dart';
import 'package:resposive_dashbord/utils/assets.dart';
import 'package:resposive_dashbord/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});
  static final items = [
    const AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpensessItem(itemModel: e)))
      //     .toList(),

      children: AllExpensesItemListView.items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: AllExpensessItem(
                  itemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: AllExpensessItem(
              itemModel: item,
              isSelected: selectedIndex == index,
            ),
          ));
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
