import '../../../core/app_export.dart';
import '../models/contentlist_item_model.dart';
import '../models/item_list_model.dart';

/// A controller class for the ItemListScreen.
///
/// This class manages the state of the ItemListScreen, including the
/// current itemListModelObj
class ItemListController extends GetxController {
  Rx<ItemListModel> itemListModelObj = ItemListModel().obs;

  void removeItem(ContentlistItemModel item) {
    itemListModelObj.value.contentlistItemList.value.remove(item);
    itemListModelObj.refresh(); // Refresh the observable to update the UI
  }
}

