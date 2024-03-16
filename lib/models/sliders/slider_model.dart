
import 'package:verkana_app/models/sliders/slider_item.dart';

class SliderModel {
  late String title;
  late int delay;
  late bool autoPlay;
  late bool isActive;
  late List<SliderItem> sliderItems;

  SliderModel.fromJson(Map<String, dynamic> json) {
    title = json['result'][0]['title'];
    delay = json['result'][0]['delay'];
    autoPlay = json['result'][0]['auto_play'];
    isActive = json['result'][0]['is_active'];
    var sliderItemJson = json['result'][0]['slider_items'];
    List<SliderItem> temp = [];
    for (var item in sliderItemJson) {
      temp.add(SliderItem(
          description: item['description'],
          isActive: item['is_active'],
          picture: item['picture'],
          title: item['title']));
    }
    sliderItems = temp;
  }
}
