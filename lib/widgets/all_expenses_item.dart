import 'package:flutter/material.dart';
import 'package:resposive_dashbord/models/all_expenses_item_model.dart';
import 'package:resposive_dashbord/widgets/inactive_and_active_all_expenses_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final AllExpensessItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(
            itemModel: itemModel,
          )
        : InActiveAllExpensessItem(itemModel: itemModel);
  }
}
