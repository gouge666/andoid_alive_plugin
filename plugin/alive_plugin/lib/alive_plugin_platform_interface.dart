import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'alive_plugin_method_channel.dart';

abstract class AlivePluginPlatform extends PlatformInterface {
  /// Constructs a AlivePluginPlatform.
  AlivePluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static AlivePluginPlatform _instance = MethodChannelAlivePlugin();

  /// The default instance of [AlivePluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelAlivePlugin].
  static AlivePluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AlivePluginPlatform] when
  /// they register themselves.
  static set instance(AlivePluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> backToDesktopButKeepAlive() {
    throw UnimplementedError(
        'backToDesktopButKeepAlive() has not been implemented.');
  }
}
