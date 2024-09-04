import '../../../core/app_export.dart';
import '../controller/item_list_controller.dart';

/// A binding class for the ItemListScreen.
///
/// This class ensures that the ItemListController is created when the
/// ItemListScreen is first loaded.
class ItemListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemListController());
  }
}

