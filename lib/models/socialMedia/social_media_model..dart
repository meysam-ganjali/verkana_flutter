import 'package:verkana_app/settings/app_setting.dart';

class SocialMediaModel {
  late int id;
  final String socialMediaName;
  final String socialMediaDescription;
  final String socialMediaUrl;
  final String socialMediaImage;
  final bool isActive;

  SocialMediaModel(
      {required this.socialMediaName,
      required this.socialMediaDescription,
      required this.socialMediaUrl,
      required this.socialMediaImage,
      required this.isActive});

  SocialMediaModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        socialMediaName = json['social_media_name'] as String,
        socialMediaDescription = json['social_media_description'] as String,
        socialMediaUrl = json['social_media_url'] as String,
        socialMediaImage = baseUrl + json['social_media_image'],
        isActive = json['is_active'] as bool;

  Map<String, dynamic> toJson() => {
        'social_media_name': socialMediaName,
        'social_media_description': socialMediaDescription,
        'social_media_url': socialMediaUrl,
        'social_media_image': socialMediaImage,
        'is_active': socialMediaImage
      };
}
