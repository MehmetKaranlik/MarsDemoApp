import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:sizer/sizer.dart';

class AddButton extends StatelessWidget {
  final double radius;
  const AddButton({
    Key? key,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.h,
      color: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: _buildButtonBody(context),
    );
  }

  InkWell _buildButtonBody(BuildContext context) {
    return InkWell(
      onTap: () => null,
      child: Ink(
        width: radius,
        height: radius,
        child: _buildButtonLabel(context),
        decoration: _buildButtonDecoration(context),
      ),
    );
  }

  Icon _buildButtonLabel(BuildContext context) {
    return Icon(
      Icons.add_rounded,
      color: context.theme.colorScheme.onBackground,
      size: (radius * 7) / 8,
    );
  }

  BoxDecoration _buildButtonDecoration(BuildContext context) {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: context.theme.colorScheme.primary,
    );
  }
}
