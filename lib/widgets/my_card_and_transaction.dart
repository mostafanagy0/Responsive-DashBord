import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/custom_background_container.dart';
import 'package:resposive_dashbord/widgets/my_card_section.dart';
import 'package:resposive_dashbord/widgets/transacton_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TrasnctionHistory(),
      ],
    ));
  }
}
