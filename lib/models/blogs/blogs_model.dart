import 'package:verkana_app/settings/app_setting.dart';

class BlogModel {
  late int id;
  final String title;
  final String description;
  final String picture;
  final String regiterDate;
  final bool isActive;

  BlogModel(
      {required this.title,
      required this.description,
      required this.picture,
      required this.regiterDate,
      required this.isActive});

  BlogModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        title = json['title'] as String,
        description = json['description'] as String,
        picture = baseUrl + json['picture'],
        regiterDate = json['register_date'] as String,
        isActive=json['is_active'] as bool;

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'picture': picture,
        'register_date': regiterDate,
        'is_active':isActive
      };
}
