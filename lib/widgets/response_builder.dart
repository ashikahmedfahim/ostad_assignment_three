import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    super.key,
    required this.mobileView,
    required this.tabletView,
    required this.desktopView,
  });

  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width <= 480) {
      return mobileView;
    }
    if (size.width >= 769) {
      return desktopView;
    }
    return tabletView;
  }
}
