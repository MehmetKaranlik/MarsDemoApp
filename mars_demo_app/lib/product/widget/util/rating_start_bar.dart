import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RatingStarBar extends StatelessWidget {
  final double rating;
  const RatingStarBar({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildStarRow(context);
  }

  Row _buildStarRow(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: List.generate(5, (index) {
        return Icon(
          Icons.star,
          color: index < rating ? Colors.yellow : Colors.grey.withOpacity(0.3),
          size: 2.5.h,
        );
      }),
    );
  }
}
