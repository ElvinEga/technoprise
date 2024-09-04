import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/appbar.dart';
import 'controller/item_list_controller.dart';
import 'models/contentlist_item_model.dart';
import 'widgets/contentlist_item_widget.dart'; // ignore_for_file: must_be_immutable

class ItemListScreen extends GetWidget<ItemListController> {
  const ItemListScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildHeader(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 20.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onErrorContainer,
                ),
              ),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [_buildContentList()],
                  ),
                ),
              ),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildHeader() {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 20.h,
          bottom: 22.h,
        ),
      ),
      title: AppbarTitle(
        text: "Test App",
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.only(
            top: 19.h,
            right: 17.h,
            bottom: 19.h,
          ),
          onTap: () {
            onTapNew();
          },
        )
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildContentList() {
    return Expanded(
      child: Obx(
            () => ListView.separated(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 12.h,
            );
          },
          itemCount: controller
              .itemListModelObj.value.contentlistItemList.value.length,
          itemBuilder: (context, index) {
            ContentlistItemModel model = controller
                .itemListModelObj.value.contentlistItemList.value[index];
            return ContentlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the addScreen when the action is triggered.
  onTapNew() {
    Logger.log("Tap event triggered");
    Get.toNamed(
      AppRoutes.addScreen,
    );
  }
}

