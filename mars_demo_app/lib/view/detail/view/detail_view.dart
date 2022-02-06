import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/base/view/base_view.dart';
import '../../../core/extensions/gradient_extension.dart';
import '../../../core/extensions/padding_insets.dart';
import '../../../core/widget/sizedBox/dynamic_horizontol_space.dart';
import '../../../core/widget/sizedBox/dynamic_veritical_space.dart';
import '../../../product/widget/clipper/custom_clipper.dart';
import '../../../product/widget/stepper/count_stepper.dart';
import '../../../product/widget/util/price_text.dart';
import '../../../product/widget/util/rating_start_bar.dart';
import '../view_model/detail_view_model.dart';
import 'package:sizer/sizer.dart';

class DetailView extends BaseView<DetailViewModel> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildClippedSection(context),
          DynamicVerticalSpace(
            height: 0.5.h,
          ),
          _buildUnClippedSection(context),
        ],
      ),
    );
  }

  Padding _buildUnClippedSection(BuildContext context) {
    return Padding(
      padding: context.paddingLowHorizontal / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProductName(context),
          DynamicVerticalSpace(
            height: 0.75.h,
          ),
          _buildRatingRow(context),
          DynamicVerticalSpace(
            height: 4.h,
          ),
          _buildAmountAndPriceRow(context),
          DynamicVerticalSpace(
            height: 3.h,
          ),
          _buildProductDescription(context),
          DynamicVerticalSpace(
            height: 3.h,
          ),
          _buildAddToCardButton(context),
        ],
      ),
    );
  }

  InkWell _buildAddToCardButton(BuildContext context) {
    return InkWell(
      onTap: () => null,
      child: _buildAddToCardButtonBody(context),
    );
  }

  Container _buildAddToCardButtonBody(BuildContext context) {
    return Container(
      width: 90.w,
      height: 7.h,
      alignment: Alignment.center,
      decoration: _buildAddToCardButtonDecoration(context),
      child: _buildAddtoCardButtonLabel(context),
    );
  }

  Text _buildAddtoCardButtonLabel(BuildContext context) {
    return Text(
      'addToCard'.tr,
      style: context.textTheme.subtitle1!.copyWith(
        color: context.theme.colorScheme.onBackground,
      ),
    );
  }

  BoxDecoration _buildAddToCardButtonDecoration(BuildContext context) {
    return BoxDecoration(
        gradient: context.stepperGradient(context),
        borderRadius: BorderRadius.all(Radius.circular(context.lowValue / 3)));
  }

  Text _buildProductDescription(BuildContext context) {
    return Text(
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis viverra enim. Pellentesque rutrum varius tincidunt. Cras congue enim ac mi feugiat lobortis. Suspendisse ultrices scelerisque viverra. Duis eu bibendum orci. Duis dignissim malesuada posuere. Aliquam erat volutpat. Donec dictum pulvinar venenatis. Phasellus mollis finibus ex id posuere. Nullam accumsan finibus sapien sit amet laoreet. Proin tempor bibendum arcu. Sed placerat, augue eu vehicula laoreet, neque ligula viverra odio, non imperdiet eros ex et risus. Quisque vitae ante sapien. Nam in dolor egestas, ornare dui sit amet, auctor nunc. Ut eget urna odio.""",
      maxLines: 4,
      style: context.theme.textTheme.bodyText2!.copyWith(
        fontWeight: FontWeight.bold,
        height: 1.4,
        color: context.theme.colorScheme.primaryVariant.withOpacity(0.7),
      ),
    );
  }

  Row _buildAmountAndPriceRow(BuildContext context) {
    return Row(
      children: [
        CountStepper(
          count: controller.orderAmount,
        ),
        const Spacer(),
        PriceText(
          currencyStyle: context.theme.textTheme.headline5!,
          priceStyle: context.theme.textTheme.headline5!,
        )
      ],
    );
  }

  Text _buildProductName(BuildContext context) {
    return Text(
      "Raspberry Ice Cream",
      style: context.theme.textTheme.headline4!.copyWith(color: context.theme.colorScheme.primaryVariant),
    );
  }

  Row _buildRatingRow(BuildContext context) {
    return Row(
      children: [
        const RatingStarBar(rating: 3.5),
        DynamicHorizontalSpace(
          width: 2.w,
        ),
        Text(
          "4.9" + "(229" + 'reviews'.tr + ')',
          style: context.theme.textTheme.caption!.copyWith(color: context.theme.colorScheme.secondary),
        ),
      ],
    );
  }

  ClipPath _buildClippedSection(BuildContext context) {
    return ClipPath(
      clipper: MarsCustomClipper(),
      child: _buildCippedSectionBody(context),
    );
  }

  Column _buildCippedSectionBody(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.w,
          height: 50.h,
          alignment: Alignment.center,
          child: Column(
            children: [
              _buildIcons(context),
              DynamicVerticalSpace(
                height: 2.h,
              ),
              _buildProductImage(),
            ],
          ),
          decoration: _buildClippedDecoration(context),
        ),
      ],
    );
  }

  Padding _buildIcons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.lowValue / 2,
        right: context.lowValue / 2,
        top: context.lowValue * 2,
      ),
      child: _buildIconRow(context),
    );
  }

  BoxDecoration _buildClippedDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.theme.colorScheme.error,
    );
  }

  Image _buildProductImage() {
    return Image.asset(
      controller.arguments.values.elementAt(0),
      width: 75.w,
    );
  }

  Row _buildIconRow(BuildContext context) {
    return Row(
      children: [
        _buildBackButton(context),
        const Spacer(),
        _buildLikeButton(context),
      ],
    );
  }

  IconButton _buildLikeButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite_border_rounded,
        color: context.theme.colorScheme.primary,
        size: 3.h,
      ),
      onPressed: () => null,
    );
  }

  IconButton _buildBackButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: context.theme.colorScheme.primary,
        size: 3.h,
      ),
      onPressed: () => Get.back(),
    );
  }
}
