import 'package:verkana_app/settings/app_setting.dart';

class SettingModel {
  late int id;
  final String siteTitle;
  final String siteDescription;
  final String favicon;
  final String aboutMe;
  final String coAddress;
  final String eventText;
  final String telNumber;
  final String logo;
  final String backgroundAdvantage;
  final bool isActive;

  SettingModel(
      this.aboutMe,
      this.backgroundAdvantage,
      this.coAddress,
      this.eventText,
      this.favicon,
      this.isActive,
      this.logo,
      this.siteDescription,
      this.siteTitle,
      this.telNumber);

  SettingModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        siteTitle = json['site_title'] as String,
        siteDescription = json['site_description'] as String,
        favicon = baseUrl + json['favicon'],
        coAddress = json['co_address'] as String,
        aboutMe = json['about_me'] as String,
        eventText = json['event_text'] as String,
        telNumber = json['tel_number'] as String,
        logo = baseUrl + json['logo'],
        backgroundAdvantage = json['background_advantage'] as String,
        isActive = json['is_active'] as bool;

  Map<String, dynamic> toJson() => {
        'site_title': siteTitle,
        'site_description': siteDescription,
        'favicon': favicon,
        'co_address': coAddress,
        'about_me': aboutMe,
        'event_text': eventText,
        'tel_number': telNumber,
        'logo': logo,
        'background_advantage': backgroundAdvantage,
        'is_active': isActive
      };
}
