import 'package:flutter/material.dart';
import 'package:technoprise/widgets/appbar.dart';
import '../../core/app_export.dart';
import '../../widgets/appbar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_controller.dart'; // ignore_for_file: must_be_immutable

class AddScreen extends GetWidget<AddController> {
  const AddScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 20.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onErrorContainer,
                ),
              ),
              _buildFormSection(),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 23.h,
          bottom: 23.h,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      title: AppbarTitle(
        text: "Add Item",
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildItemTitleField() {
    return CustomTextFormField(
      controller: controller.itemTitleFieldController,
      hintText: "Enter a title for the item",
      contentPadding: EdgeInsets.all(8.h),
    );
  }

  /// Section Widget
  Widget _buildDescriptionField() {
    return CustomTextFormField(
      controller: controller.descriptionFieldController,
      hintText: "Add Description",
      textInputAction: TextInputAction.done,
      maxLines: 8,
      contentPadding: EdgeInsets.fromLTRB(8.h, 8.h, 8.h, 12.h),
    );
  }

  /// Section Widget
  Widget _buildCancelButton() {
    return CustomOutlinedButton(
      width: 74.h,
      text: "Cancel",
      onPressed: () {
        onTapCancelButton();
      },
    );
  }

  /// Section Widget
  Widget _buildAddItemButton() {
    return CustomElevatedButton(
      width: 88.h,
      text: "Add Item",
      onPressed: () {
        onTapAddItemButton();
      },
    );
  }

  /// Section Widget
  Widget _buildFormSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(14.h),
                  decoration: AppDecoration.neutral300.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "*",
                              style: CustomTextStyles.bodySmallErrorContainer,
                            ),
                            TextSpan(
                              text: "Indicate Required Fields",
                              style: CustomTextStyles.bodySmall_1,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 4.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Item Title",
                              style: CustomTextStyles.titleSmallMedium_1,
                            ),
                            TextSpan(
                              text: "*",
                              style: CustomTextStyles.titleSmallErrorContainer,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 4.h),
                      _buildItemTitleField(),
                      SizedBox(height: 12.h),
                      Text(
                        "Description",
                        style: CustomTextStyles.titleSmallMedium,
                      ),
                      SizedBox(height: 4.h),
                      _buildDescriptionField()
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [_buildCancelButton(), _buildAddItemButton()],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the itemListScreen when the action is triggered.
  onTapCancelButton() {
    Get.toNamed(
      AppRoutes.itemListScreen,
    );
  }

  /// Navigates to the itemListScreen when the action is triggered.
  onTapAddItemButton() {
    if (controller.validateForm()) {
      controller.addNewItem();
      Get.toNamed(
        AppRoutes.itemListScreen,
      );
    } else {
      Get.snackbar(
        'Form Error',
        'Please fill in all required fields.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
