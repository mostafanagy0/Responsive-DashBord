import 'package:flutter/material.dart';
import 'package:resposive_dashbord/utils/size_config.dart';
import 'package:resposive_dashbord/widgets/detaled_income_section.dart';
import 'package:resposive_dashbord/widgets/icome_detals.dart';
import 'package:resposive_dashbord/widgets/income_chart.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
