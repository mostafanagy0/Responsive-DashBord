import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobileLayout,
    required this.tablitLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tablitLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 900) {
          return tablitLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
