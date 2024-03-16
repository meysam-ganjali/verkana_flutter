import 'package:verkana_app/settings/app_setting.dart';

class BrandModel {
  late int id;
  final String brandTitle;
  final String brandDescription;
  final String brandImage;
  final bool isActive;

  BrandModel(
      {required this.brandTitle,
      required this.brandDescription,
      required this.brandImage,
      required this.isActive});

  BrandModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        brandTitle = json['brand_title'] as String,
        brandDescription = json['brand_description'] as String,
        brandImage = baseUrl + json['brand_image'],
        isActive = json['is_active'] as bool;
}
