import 'package:flutter/widgets.dart';

@immutable
class SocialIcon {
  static const String facebook = "assets/images/social_icons/Facebook.png";
  static const String instagram = "assets/images/social_icons/Instagram.png";
  static const String snapchat = "assets/images/social_icons/Snapchat.png";
  static const String tiktok = "assets/images/social_icons/TikTok.png";
  static const String youtube = "assets/images/social_icons/YouTube.png";
  static const String twitter = "assets/images/social_icons/Twitter.png";
}

@immutable
class MediaIcon {
  static const String audio = "assets/images/media_icon/audio.png";
  static const String videoOnly = "assets/images/media_icon/video-only.png";
  static const String videoWithAudio = "assets/images/media_icon/video.png";
  static const String link = "assets/images/media_icon/link.png";
}

@immutable
class BottomNavIcon {
  static const String home = "assets/images/bottom_nav_icon/home.png";
  static const String downloaded =
      "assets/images/bottom_nav_icon/downloaded.png";
}

@immutable
class FontFamily {
  static const String poppins = "assets/fonts/Poppins-Regular.ttf";
}

@immutable
class AppColor {
  // For White Theme
  static final Color whiteScaffoldBackgroundColor = "#FEFBFF".toHexColor();
  static final Color whiteSearchBarColor = "#DBE4F6".toHexColor();
  static final Color whiteSocialIconBoxColor = "#F1F3FC".toHexColor();
  static final Color whiteBottomBarColor = "#EAEEFA".toHexColor();
  static final Color whiteFocusIconColor = "#D8E2FF".toHexColor();
  static final Color whiteActiveIconColor = "#0F1B32".toHexColor();
  static final Color whiteNonActiveIconColor = "#44474F".toHexColor();
  static final Color whiteFontColor = "#1B1B1F".toHexColor();

  // For Dark Theme
  static final Color dartScaffoldBackgroundColor = "#1B1B1F".toHexColor();
  static final Color darkSearchBarColor = "#2F333F".toHexColor();
  static final Color darkSocialIconBoxColor = "#22242A".toHexColor();
  static final Color darkBottomBarColor = "#272931".toHexColor();
  static final Color darkFocusIconColor = "#1B1B1F".toHexColor();
  static final Color darkActiveIconColor = "#D8E2FF".toHexColor();
  static final Color darkNonActiveIconColor = "#C4C6CF".toHexColor();
  static final Color darkFontColor = "#E3E2E6".toHexColor();
}

// Color Conversion
extension ColorExtension on String {
  Color toHexColor() {
    final String hexString = replaceAll('#', '');
    final int? hexValue = int.tryParse(hexString, radix: 16);
    if (hexValue != null) {
      if (hexString.length == 6 || hexString.length == 8) {
        return Color(hexValue);
      }
    }
    throw FormatException('Invalid color format: $this');
  }
}


/*


extension ColorExtension on String {
 Color toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

*/