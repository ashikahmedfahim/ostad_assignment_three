enum DeviceType { mobile, tablet, desktop }

class ScreenUtils {
  static const double mobileMaxSize = 610;
  static const double tabletMaxSize = 1008;
  static const double desktopMinSize = 1008;

  static DeviceType getDeviceType(double width) {
    if (width <= mobileMaxSize) return DeviceType.mobile;
    if (width >= desktopMinSize) return DeviceType.desktop;
    return DeviceType.tablet;
  }
}
