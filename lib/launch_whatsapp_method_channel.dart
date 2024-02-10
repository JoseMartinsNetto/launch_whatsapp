import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'launch_whatsapp_platform_interface.dart';

/// An implementation of [LaunchWhatsappPlatform] that uses method channels.
class MethodChannelLaunchWhatsapp extends LaunchWhatsappPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('launch_whatsapp');

  @override
  Future<void> launch(String url) async {
    await methodChannel.invokeMethod<void>('launch', url);
  }
}
