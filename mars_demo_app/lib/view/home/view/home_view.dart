import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mars_demo_app/core/base/view/base_view.dart';
import 'package:mars_demo_app/core/constants/assets/image_constants.dart';
import 'package:mars_demo_app/core/constants/routes/routes_constants.dart';
import 'package:mars_demo_app/core/extensions/padding_insets.dart';
import 'package:mars_demo_app/core/widget/sizedBox/dynamic_horizontol_space.dart';
import 'package:mars_demo_app/core/widget/sizedBox/dynamic_veritical_space.dart';
import 'package:mars_demo_app/product/widget/cards/popular_icecream_card.dart';
import 'package:mars_demo_app/product/widget/cards/top_flavour_preview_card.dart';
import 'package:mars_demo_app/product/widget/cards/top_item_preview_card.dart';
import 'package:mars_demo_app/product/widget/container/custom_avatar.dart';
import 'package:mars_demo_app/product/widget/text_form_field/custom_text_form_field_with_filter_button.dart';
import 'package:mars_demo_app/view/home/view_model/home_view_model.dart';
import 'package:sizer/sizer.dart';

class HomeView extends BaseView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: context.outerPaddingWithoutBottom,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildHeader(context),
                  DynamicVerticalSpace(),
                  CustomTextFieldWithFilter(onTap: () => null),
                  DynamicVerticalSpace(height: 3.h),
                  _buildTopFlavoursHeader(context),
                ])),
            _buildTopFlavoursPageView(),
            _buildPopularIceCreamHeader(context),
            DynamicVerticalSpace(height: 2.h),
            _buildPopularIceCreamListView(),
            DynamicVerticalSpace(),
            _buildTopItemsHeader(context),
            DynamicVerticalSpace(height: 2.h),
            _buildTopItems(),
          ],
        ),
      ),
    );
  }

  SizedBox _buildTopItems() {
    return SizedBox(
      height: 28.h,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _buildSingeTopItem(index, context);
        },
        itemCount: 5,
        separatorBuilder: (context, index) {
          return DynamicHorizontalSpace(width: 2.h);
        },
      ),
    );
  }

  Padding _buildSingeTopItem(int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: index == 0 ? context.lowValue / 2 : 0),
      child: TopItemPreviewCard(
        onTap: () {},
        imagePath: ImageConstants.instance.iceCreamCup,
        backGroundColor: index.isEven ? context.theme.colorScheme.error : context.theme.colorScheme.onSurface,
      ),
    );
  }

  Padding _buildTopItemsHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: context.lowValue / 2),
      child: Text(
        "Top Item",
        style: context.theme.textTheme.headline6!.copyWith(
          color: context.theme.colorScheme.primaryVariant,
        ),
      ),
    );
  }

  SizedBox _buildPopularIceCreamListView() {
    return SizedBox(
      height: 5.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? context.lowValue / 2 : 0),
              child: const PopularIceCreamCard(),
            );
          },
          separatorBuilder: (context, index) => DynamicHorizontalSpace(width: 3.w),
          itemCount: 20),
    );
  }

  Padding _buildPopularIceCreamHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.lowValue / 2),
      child: Text(
        "Popular Ice Cream",
        style: context.theme.textTheme.headline6!.copyWith(
          color: context.theme.colorScheme.primaryVariant,
        ),
      ),
    );
  }

  SizedBox _buildTopFlavoursPageView() {
    return SizedBox(
      height: 20.h,
      child: PageView.builder(
        itemCount: 5,
        pageSnapping: true,
        dragStartBehavior: DragStartBehavior.start,
        itemBuilder: (context, index) {
          return TopFlavourPreviewCard(
            onTap: () {
              controller.arguementedImagePath = ImageConstants.instance.iceCream;
              Get.toNamed(Routes.DETAIL, arguments: controller.arguments);
            },
            imagePath: ImageConstants.instance.iceCream,
          );
        },
      ),
    );
  }

  Text _buildTopFlavoursHeader(BuildContext context) {
    return Text(
      "Top Flavours",
      style: context.theme.textTheme.headline6!.copyWith(
        color: context.theme.colorScheme.primaryVariant,
      ),
    );
  }

  Row _buildHeader(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [_buildGreetingText(context), const Spacer(), _buildAvatar()],
    );
  }

  CustomAvatar _buildAvatar() {
    return CustomAvatar(
      radius: 5.h,
      imageUrl: controller.avatarImageUrl,
    );
  }

  Column _buildGreetingText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hey Eddie",
          style: context.theme.textTheme.headline4!.copyWith(color: context.theme.colorScheme.primaryVariant),
        ),
        DynamicVerticalSpace(
          height: 0.5.h,
        ),
        Text(
          "What flavor do you like to eat?",
          style: context.theme.textTheme.bodyText2!.copyWith(color: context.theme.colorScheme.secondary),
        ),
      ],
    );
  }
}
