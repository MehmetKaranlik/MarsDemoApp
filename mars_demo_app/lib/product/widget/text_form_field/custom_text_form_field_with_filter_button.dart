import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sizer/sizer.dart';

class CustomTextFieldWithFilter extends StatelessWidget {
  final VoidCallback onTap;
  CustomTextFieldWithFilter({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 0,
      color: Colors.transparent,
    ),
    borderRadius: BorderRadius.circular(
      1.h,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      fit: StackFit.loose,
      children: [
        _buildTextFormField(context),
        _buildFiterButton(context),
      ],
    );
  }

  Padding _buildTextFormField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: 'search'.tr,
            prefixIcon: const Icon(Icons.search),
            fillColor: context.theme.colorScheme.secondaryVariant,
            filled: true,
            enabledBorder: outlineInputBorder,
            errorBorder: outlineInputBorder,
            disabledBorder: outlineInputBorder,
            border: outlineInputBorder),
      ),
    );
  }

  Material _buildFiterButton(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => onTap,
        child: _buildFilterButtonBody(context),
      ),
    );
  }

  Ink _buildFilterButtonBody(BuildContext context) {
    return Ink(
      height: 5.h,
      width: 25.w,
      decoration: _buildFilterButtonBodyDecoration(context),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [_buildButtonIcon(context), _buildButtonLabel(context)],
      ),
    );
  }

  Text _buildButtonLabel(BuildContext context) {
    return Text(
      "Filter",
      style: context.theme.textTheme.subtitle1!.copyWith(color: context.theme.colorScheme.onBackground),
    );
  }

  Icon _buildButtonIcon(BuildContext context) {
    return Icon(
      Icons.format_list_bulleted_rounded,
      color: context.theme.colorScheme.onBackground,
    );
  }

  BoxDecoration _buildFilterButtonBodyDecoration(BuildContext context) {
    return BoxDecoration(
        color: context.theme.colorScheme.primary, borderRadius: BorderRadius.all(Radius.circular(3.5.w)));
  }
}
