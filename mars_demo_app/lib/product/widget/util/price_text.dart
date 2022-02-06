import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:mars_demo_app/core/widget/sizedBox/dynamic_horizontol_space.dart';
import 'package:sizer/sizer.dart';

class PriceText extends StatelessWidget {
  final TextStyle currencyStyle;
  final TextStyle priceStyle;
  const PriceText({Key? key, required this.currencyStyle, required this.priceStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildCurrencyText(context),
        DynamicHorizontalSpace(
          width: 1.w,
        ),
        _buildPriceText()
      ],
    );
  }

  Text _buildPriceText() {
    return Text(
      "14,60",
      textScaleFactor: 1.3,
      style: priceStyle.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Text _buildCurrencyText(BuildContext context) {
    return Text(
      "\$",
      textScaleFactor: 1.3,
      style: currencyStyle.copyWith(
        color: context.theme.colorScheme.primary,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
