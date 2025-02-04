import 'package:flutter/cupertino.dart';

enum ScreenType {
  mobile,
  tablet,
  desktop,
}

class Breakpoints {
  static const double mobileMaxWidth = 600;
  static const double tabletMaxWidth = 1024;
}

extension ScreenTypeExtension on BuildContext {
  bool isMobile() =>
      MediaQuery.sizeOf(this).width <= Breakpoints.mobileMaxWidth;

  bool isTablet() =>
      MediaQuery.sizeOf(this).width > Breakpoints.mobileMaxWidth &&
      MediaQuery.sizeOf(this).width <= Breakpoints.tabletMaxWidth;

  bool isDesktop() =>
      MediaQuery.sizeOf(this).width > Breakpoints.tabletMaxWidth;

  ScreenType get screenType {
    final width = MediaQuery.of(this).size.width;

    if (width >= Breakpoints.tabletMaxWidth) return ScreenType.desktop;
    if (width >= Breakpoints.mobileMaxWidth) return ScreenType.tablet;

    return ScreenType.mobile;
  }
}
