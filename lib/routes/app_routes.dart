import '../core/app_export.dart';
import '../presentation/add_screen/add_screen.dart';
import '../presentation/add_screen/binding/add_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/item_list_screen/binding/item_list_binding.dart';
import '../presentation/item_list_screen/item_list_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String itemListScreen = '/item_list_screen';

  static const String addScreen = '/add_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: itemListScreen,
      page: () => ItemListScreen(),
      bindings: [ItemListBinding()],
    ),
    GetPage(
      name: addScreen,
      page: () => AddScreen(),
      bindings: [AddBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => ItemListScreen(),
      bindings: [ItemListBinding()],
    )
  ];
}

