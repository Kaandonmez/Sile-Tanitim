import 'package:url_launcher/url_launcher.dart';

launchMap(String mapUrl) async {
  if (await canLaunch(mapUrl)) {
    await launch(mapUrl);
  }
}
