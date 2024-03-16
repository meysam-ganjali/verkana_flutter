import 'package:verkana_app/settings/app_setting.dart';

class AdvantagesModel {
  late int id;
  final String advantageName;
  final String image;
  final String color;
  final String advantageDescription;
  final bool isAvtive;

  AdvantagesModel(
      {required this.advantageName,
      required this.image,
      required this.color,
      required this.advantageDescription,
      required this.isAvtive});

  AdvantagesModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        advantageName = json['advantage_name'] as String,
        image = baseUrl + json['image'],
        color = json['color'] as String,
        advantageDescription = json['advantage_description'] as String,
        isAvtive = json['is_active'] as bool;

  Map<String, dynamic> toJson() => {
        'advantage_name': advantageName,
        'image': image,
        'color': color,
        'advantage_description': advantageDescription,
        'is_active': isAvtive
      };
}
