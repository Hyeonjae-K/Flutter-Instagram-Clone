import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/utils/global_variable.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({
    Key? key,
    required this.webScreenLayout,
    required this.mobileScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          // web screen
          return webScreenLayout;
        }
        // mobild screen
        return mobileScreenLayout;
      },
    );
  }
}
