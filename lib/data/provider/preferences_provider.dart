import 'package:app/data/internal/globals.dart';
import 'package:flutter/cupertino.dart';

class PreferencesProvider extends ChangeNotifier {
  // Enable/Disable Video Autoplay (Video page)
  bool get videoPageAutoPlay {
    return globalPrefs?.getBool('videoPageAutoPlay') ?? true;
  }

  set videoPageAutoPlay(bool value) {
    globalPrefs?.setBool('videoPageAutoPlay', value);
    notifyListeners();
  }

  // Youtube Auto-Play
  bool get youtubeAutoPlay {
    return globalPrefs?.getBool('youtubeAutoPlay') ?? true;
  }

  set youtubeAutoPlay(bool value) {
    globalPrefs?.setBool('youtubeAutoPlay', value);
    notifyListeners();
  }

  // Youtube Player last set quality
  String get youtubePlayerQuality {
    return globalPrefs?.getString('youtubePlayerQuality') ?? "720";
  }
  set youtubePlayerQuality(String quality) {
    globalPrefs?.setString('youtubePlayerQuality', quality);
    notifyListeners();
  }
}
