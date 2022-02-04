import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:mars_demo_app/core/base/view/base_view.dart';
import 'package:mars_demo_app/core/extensions/padding_insets.dart';
import 'package:mars_demo_app/core/widget/sizedBox/dynamic_veritical_space.dart';
import 'package:mars_demo_app/product/widget/container/custom_avatar.dart';
import 'package:mars_demo_app/view/home/view_model/home_view_model.dart';
import 'package:sizer/sizer.dart';

class HomeView extends BaseView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.outerPadding,
          child: Column(
            children: [
              _buildHeader(context),
              DynamicVerticalSpace(),
              Stack(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        fillColor: context.theme.colorScheme.secondaryVariant,
                        filled: true),
                  ),
                ],
              ),
            ],
          ),
        ),
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
        //   Spacer(),
      ],
    );
  }
}
