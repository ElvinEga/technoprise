

import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/item_list_controller.dart';
import '../models/contentlist_item_model.dart';

// ignore_for_file: must_be_immutable
class ContentlistItemWidget extends StatelessWidget {
  ContentlistItemWidget(this.contentlistItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ContentlistItemModel contentlistItemModelObj;

  var controller = Get.find<ItemListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.h,
      ),
      decoration: AppDecoration.neutral300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                      () => Text(
                    contentlistItemModelObj.text!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Confirm Deletion'),
                          content: Text('Are you sure you want to delete this item?'),
                          actions: [
                            TextButton(
                              child: Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                            ),
                            TextButton(
                              child: const Text('Delete' ,style: TextStyle(color: Colors.red),),
                              onPressed: () {
                                controller.removeItem(contentlistItemModelObj);
                                Navigator.of(context).pop(); // Close the dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 24.h,
                    width: 24.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Obx(
                () => Text(
                  textAlign: TextAlign.left,
              contentlistItemModelObj.text1!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }
}

