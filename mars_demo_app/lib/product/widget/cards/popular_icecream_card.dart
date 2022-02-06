import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import '../../../core/constants/assets/image_constants.dart';
import '../../../core/extensions/padding_insets.dart';
import 'package:sizer/sizer.dart';

class PopularIceCreamCard extends StatelessWidget {
  const PopularIceCreamCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildLeftSide(context),
        _buildRightsSide(context),
      ],
    );
  }

  Container _buildRightsSide(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: context.paddingLowHorizontal / 4,
      child: Text(
        "Neopolitan",
        style: context.theme.textTheme.subtitle1,
      ),
      height: 5.h,
      decoration: _buildRightSideDecoration(context),
    );
  }

  BoxDecoration _buildRightSideDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.theme.colorScheme.surface,
      borderRadius: BorderRadius.all(Radius.circular(1.w)),
    );
  }

  Container _buildLeftSide(BuildContext context) {
    return Container(
      height: 5.h,
      width: 10.w,
      child: Image.asset(ImageConstants.instance.tripleIceCream),
      decoration: _buildLeftSideDecoration(context),
    );
  }

  BoxDecoration _buildLeftSideDecoration(BuildContext context) {
    return BoxDecoration(
      color: context.theme.colorScheme.onSurface,
      borderRadius: BorderRadius.all(Radius.circular(1.w)),
    );
  }
}
