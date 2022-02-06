import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:mars_demo_app/core/extensions/padding_insets.dart';
import 'package:mars_demo_app/core/widget/sizedBox/dynamic_veritical_space.dart';
import 'package:mars_demo_app/product/widget/button/add_button.dart';
import 'package:sizer/sizer.dart';

class TopItemPreviewCard extends StatelessWidget {
  final Color backGroundColor;
  final String imagePath;
  final VoidCallback onTap;
  const TopItemPreviewCard({
    Key? key,
    required this.backGroundColor,
    required this.onTap,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44.w,
        child: _buildCardBody(context),
        decoration: _buildBackgroundDecoration(context),
      ),
    );
  }

  Column _buildCardBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCardImage(),
        _buildCardInfo(context),
      ],
    );
  }

  Padding _buildCardInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildItemName(context),
          _buildExtraDetails(context),
          DynamicVerticalSpace(
            height: 1.h,
          ),
          _buildPriceAndAddButton(context)
        ],
      ),
    );
  }

  Row _buildPriceAndAddButton(BuildContext context) {
    return Row(
      children: [
        Text(
          "\$",
          style: context.theme.textTheme.bodyText2!.copyWith(
            color: context.theme.colorScheme.primary,
          ),
        ),
        Text(
          "14.60",
          style: context.theme.textTheme.bodyText2,
        ),
        const Spacer(),
        AddButton(radius: 3.5.h)
      ],
    );
  }

  Text _buildExtraDetails(BuildContext context) {
    return Text(
      "With strawberry jam",
      style: context.theme.textTheme.subtitle2!.copyWith(
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Text _buildItemName(BuildContext context) {
    return Text(
      'Ice Cream Cup',
      style: context.theme.textTheme.bodyText2,
    );
  }

  SizedBox _buildCardImage() {
    return SizedBox(
      child: Image.asset(
        imagePath,
        height: 18.h,
      ),
      width: 44.w,
    );
  }

  BoxDecoration _buildBackgroundDecoration(BuildContext context) {
    return BoxDecoration(
      color: backGroundColor,
      borderRadius: BorderRadius.all(
        Radius.circular(context.lowValue / 2),
      ),
    );
  }
}
