import 'alive_plugin_platform_interface.dart';

class AlivePlugin {
  Future<String?> getPlatformVersion() {
    return AlivePluginPlatform.instance.getPlatformVersion();
  }

  static Future<void> backToDesktopButKeepAlive() {
    return AlivePluginPlatform.instance.backToDesktopButKeepAlive();
  }
}
