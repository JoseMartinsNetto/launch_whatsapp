import 'launch_whatsapp_platform_interface.dart';

class LaunchWhatsapp {
  static Future<void> launch(String url) => LaunchWhatsappPlatform.instance.launch(url);
}
