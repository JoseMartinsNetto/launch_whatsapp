import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'launch_whatsapp_method_channel.dart';

abstract class LaunchWhatsappPlatform extends PlatformInterface {
  /// Constructs a LaunchWhatsappPlatform.
  LaunchWhatsappPlatform() : super(token: _token);

  static final Object _token = Object();

  static LaunchWhatsappPlatform _instance = MethodChannelLaunchWhatsapp();

  /// The default instance of [LaunchWhatsappPlatform] to use.
  ///
  /// Defaults to [MethodChannelLaunchWhatsapp].
  static LaunchWhatsappPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LaunchWhatsappPlatform] when
  /// they register themselves.
  static set instance(LaunchWhatsappPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> launch(String url);
}
