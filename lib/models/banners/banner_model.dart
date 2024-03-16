import 'package:verkana_app/settings/app_setting.dart';

class BannerModel {
  late int id;
  final String title;
  final String description;
  final String picture;
  final String linkTitle;
  final bool isActive;

  BannerModel(
      {required this.title,
      required this.description,
      required this.picture,
      required this.linkTitle,
      required this.isActive});

  BannerModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        title = json['title'] as String,
        description = json['description'] as String,
        picture = baseUrl + json['picture'],
        linkTitle = json['link_title'] as String,
        isActive = json['is_active'] as bool;

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'picture': picture,
        'linkTitle': linkTitle,
        'is_active': isActive
      };
}
