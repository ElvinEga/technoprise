import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'custom_elevated_button.dart';

class AppbarTitle extends StatelessWidget {
  AppbarTitle({Key? key, required this.text, this.margin, this.onTap})
      : super(
    key: key,
  );

  final String text;

  final EdgeInsetsGeometry? margin;

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
      ),
    );
  }
}


class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
    key: key,
  );

  final String? imagePath;

  final EdgeInsetsGeometry? margin;

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 28.h,
          width: 28.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}


class AppbarTrailingButton extends StatelessWidget {
  AppbarTrailingButton({Key? key, this.margin, this.onTap})
      : super(
    key: key,
  );

  final EdgeInsetsGeometry? margin;

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          onPressed: () {
            onTap?.call();
          } ,
          width: 78.h,
          text: "New",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
              imagePath: ImageConstant.img16OutlinedSuggestedSymbolPlus,
              height: 16.h,
              width: 16.h,
            ),
          ),
        ),
      ),
    );
  }
}



enum Style { bgShadow }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
        this.height,
        this.styleType,
        this.leadingWidth,
        this.leading,
        this.title,
        this.centerTitle,
        this.actions})
      : super(
    key: key,
  );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 70.h,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
    SizeUtils.width,
    height ?? 70.h,
  );
  _getStyle() {
    switch (styleType) {
      case Style.bgShadow:
        return Container(
          height: 70.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.secondaryContainer,
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  1,
                ),
              )
            ],
          ),
        );
      default:
        return null;
    }
  }
}

