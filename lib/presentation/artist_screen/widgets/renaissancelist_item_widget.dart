import 'package:flutter/material.dart';
import 'package:musig/core/app_export.dart';

// ignore: must_be_immutable
class RenaissancelistItemWidget extends StatelessWidget {
  RenaissancelistItemWidget({
    Key? key,
    this.onTapUrgentSiege,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUrgentSiege;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: GestureDetector(
        onTap: () {
          onTapUrgentSiege!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnails,
              height: 181.v,
              width: 159.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              "Urgent Siege",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 2.v),
            Text(
              "Damned Anthem",
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
