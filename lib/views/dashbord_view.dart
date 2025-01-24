import 'package:flutter/material.dart';
import 'package:resposive_dashbord/widgets/adaptive_layout_widget.dart';
import 'package:resposive_dashbord/widgets/cutom_drawer.dart';
import 'package:resposive_dashbord/widgets/dashbord_desktop_layout.dart';
import 'package:resposive_dashbord/widgets/dashbord_mobile_layout.dart';
import 'package:resposive_dashbord/widgets/dashbord_tablet_layout.dart';

class DashBordView extends StatefulWidget {
  const DashBordView({super.key});

  @override
  State<DashBordView> createState() => _DashBordViewState();
}

class _DashBordViewState extends State<DashBordView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer:
          MediaQuery.of(context).size.width < 800 ? const CustomDrawer() : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tablitLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
