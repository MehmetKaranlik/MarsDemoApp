import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:mars_demo_app/core/constants/assets/image_constants.dart';
import 'package:mars_demo_app/core/constants/enum/heo_tag_enums.dart';
import 'package:mars_demo_app/core/extensions/padding_insets.dart';
import 'package:mars_demo_app/core/widget/sizedBox/dynamic_horizontol_space.dart';
import 'package:mars_demo_app/core/widget/sizedBox/dynamic_veritical_space.dart';
import 'package:mars_demo_app/product/widget/button/add_button.dart';
import 'package:sizer/sizer.dart';

class TopFlavourPreviewCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  const TopFlavourPreviewCard({
    Key? key, required this.imagePath, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [_buildBottomStack(context), _buildUpperStack()],
      ),
    );
  }

  Positioned _buildUpperStack() {
    return Positioned(
      bottom: 6.w,
      left: (-1).w,
      child: Hero(
        tag: HeroTag.HOMETODETAIL.path,
        child: Image.asset(
          imagePath,
          height: 13.h,
        ),
      ),
    );
  }

  Container _buildBottomStack(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 2.h,
        horizontal: 5.w,
      ),
      decoration: _buildBottomStackDecoration(context),
      child: _buildBottomStackBody(context),
    );
  }

  Row _buildBottomStackBody(BuildContext context) {
    return Row(
      children: [_buildLeftExpanded(), _buildRightExpanded(context)],
    );
  }

  Expanded _buildLeftExpanded() {
    return const Expanded(
      flex: 4,
      child: SizedBox.expand(),
    );
  }

  Expanded _buildRightExpanded(BuildContext context) {
    return Expanded(
        flex: 6,
        child: Padding(
          padding: EdgeInsets.only(left: context.lowValue / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DynamicVerticalSpace(height: 2.h),
              _buildItemHeader(context),
              DynamicVerticalSpace(height: 1.h),
              _buildItemRatingAndStockValue(context),
              DynamicVerticalSpace(height: 0.8.h),
              _buildItemPriceAndAddButton(context)
            ],
          ),
        ));
  }

  Row _buildItemPriceAndAddButton(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildCurrencySign(context),
        DynamicHorizontalSpace(
          width: 1.w,
        ),
        _buildPriceValue(context),
        DynamicHorizontalSpace(
          width: 20.w,
        ),
        AddButton(
          radius: 4.h,
        ),
        const Spacer()
      ],
    );
  }

  Text _buildPriceValue(BuildContext context) {
    return Text(
      "14,60",
      style: context.theme.textTheme.bodyText2!.copyWith(
        fontWeight: FontWeight.bold,
        color: context.theme.colorScheme.primaryVariant,
      ),
    );
  }

  Text _buildCurrencySign(BuildContext context) {
    return Text(
      "\$",
      style: context.theme.textTheme.caption!.copyWith(
        fontWeight: FontWeight.bold,
        color: context.theme.colorScheme.primary,
      ),
    );
  }

  Row _buildItemRatingAndStockValue(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: _buildItemSockValue(context),
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.w),
          decoration: _buildItemStockValueBackground(context),
        ),
        DynamicHorizontalSpace(
          width: 9.w,
        ),
        _buildRatingStar(),
        _buildRationValue(context),
        Spacer()
      ],
    );
  }

  BoxDecoration _buildItemStockValueBackground(BuildContext context) {
    return BoxDecoration(
      color: context.theme.colorScheme.onPrimary,
      borderRadius: BorderRadius.all(
        Radius.circular(1.5.h),
      ),
    );
  }

  Text _buildRationValue(BuildContext context) {
    return Text(
      "4.9",
      style: context.theme.textTheme.bodyText2,
    );
  }

  Image _buildRatingStar() {
    return Image.asset(
      ImageConstants.instance.starFilled,
      height: 3.h,
    );
  }

  Text _buildItemSockValue(BuildContext context) {
    return Text(
      "1 KG",
      style: context.theme.textTheme.bodyText2,
    );
  }

  Text _buildItemHeader(BuildContext context) {
    return Text(
      "Vanilla Ice Cream",
      style: context.theme.textTheme.headline6!.copyWith(
        color: context.theme.colorScheme.primaryVariant,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  BoxDecoration _buildBottomStackDecoration(BuildContext context) {
    return BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: context.theme.colorScheme.primaryVariant.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 8),
          )
        ],
        color: context.theme.colorScheme.error,
        borderRadius: BorderRadius.all(
          Radius.circular(2.h),
        ));
  }
}
