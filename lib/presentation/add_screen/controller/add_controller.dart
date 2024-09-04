import 'package:flutter/material.dart';
import 'package:technoprise/presentation/item_list_screen/models/item_list_model.dart';

import '../../../core/app_export.dart';
import '../../item_list_screen/controller/item_list_controller.dart';
import '../../item_list_screen/models/contentlist_item_model.dart';

class AddController extends GetxController {
  Rx<ItemListModel> itemListModelObj = ItemListModel().obs;

  TextEditingController itemTitleFieldController = TextEditingController();
  TextEditingController descriptionFieldController = TextEditingController();

  bool validateForm() {
    return itemTitleFieldController.text.isNotEmpty && descriptionFieldController.text.isNotEmpty;
  }
  /// Adds a new item to the list.
  void addNewItem() {
    ContentlistItemModel newItem = ContentlistItemModel(
      text: RxString(itemTitleFieldController.text),
      text1: RxString(descriptionFieldController.text),
    );

    // Find the ItemListController and add the new item to its list
    ItemListController itemListController = Get.find<ItemListController>();
    itemListController.itemListModelObj.value.contentlistItemList.value.add(newItem);
    itemListController.itemListModelObj.refresh(); // Refresh the observable to update the UI

    // Clear the text fields
    itemTitleFieldController.clear();
    descriptionFieldController.clear();
  }
}