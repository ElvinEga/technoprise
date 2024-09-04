import '../../../core/app_export.dart';
import 'contentlist_item_model.dart';

/// This class defines the variables used in the [item_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ItemListModel {
  Rx<List<ContentlistItemModel>> contentlistItemList = Rx([
    ContentlistItemModel(
        text: "Rainforest Ecosystems".obs,
        text1:
        "Discover the rich biodiversity found in rainforests, from towering trees to unique wildlife species."
            .obs),
    ContentlistItemModel(
        text: "Space Exploration".obs,
        text1:
        "Learn about humanity's journey to explore the cosmos, from the first moon landing to Mars missions"
            .obs),
    ContentlistItemModel(
        text: "Ancient Civilizations".obs,
        text1:
        "Explore the mysteries and achievements of ancient civilizations like the Egyptians, Greeks, and Mayans."
            .obs),
    ContentlistItemModel(
        text: "Renewable Energy".obs,
        text1:
        "Understand the importance of renewable energy sources like solar, wind, and hydro power in combating climate change"
            .obs)
  ]);
}

