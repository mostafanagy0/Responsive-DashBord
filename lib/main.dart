import 'package:flutter/material.dart';
import 'package:resposive_dashbord/views/dashBord_view.dart';

void main() {
  runApp(const ReponsiveDashbord());
}

class ReponsiveDashbord extends StatelessWidget {
  const ReponsiveDashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBordView(),
    );
  }
}
