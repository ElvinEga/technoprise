import '../../../core/app_export.dart';

/// This class is used in the [contentlist_item_widget] screen.

// ignore_for_file: must_be_immutable
class ContentlistItemModel {
  ContentlistItemModel({this.text, this.text1, this.id}) {
    text = text ?? Rx("Rainforest Ecosystems");
    text1 = text1 ??
        Rx("Discover the rich biodiversity found in rainforests, from towering trees to unique wildlife species.");
    id = id ?? Rx("");
  }

  Rx<String>? text;

  Rx<String>? text1;

  Rx<String>? id;
}

