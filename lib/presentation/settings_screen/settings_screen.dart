import '../settings_screen/widgets/equalizer_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:musig/core/app_export.dart';
import 'package:musig/widgets/app_bar/appbar_leading_image.dart';
import 'package:musig/widgets/app_bar/appbar_title.dart';
import 'package:musig/widgets/app_bar/appbar_trailing_image.dart';
import 'package:musig/widgets/app_bar/custom_app_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildEqualizer(context),
                      SizedBox(height: 35.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("My Settings",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Default",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Club music",
                              style: CustomTextStyles
                                  .bodyLargeSecondaryContainer)),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Classical music",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Dance music",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Low frequency gain",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Low frequency gain",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 53.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Equalizer"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgClose,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildEqualizer(BuildContext context) {
    return SizedBox(
        height: 343.v,
        child: ListView.separated(
            padding: EdgeInsets.only(right: 7.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 23.h);
            },
            itemCount: 6,
            itemBuilder: (context, index) {
              return EqualizerItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
