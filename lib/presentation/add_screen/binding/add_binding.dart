import '../../../core/app_export.dart';
import '../controller/add_controller.dart';

/// A binding class for the AddScreen.
///
/// This class ensures that the AddController is created when the
/// AddScreen is first loaded.
class AddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddController());
  }
}

