import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:mars_demo_app/core/extensions/gradient_extension.dart';
import 'package:mars_demo_app/core/extensions/padding_insets.dart';
import 'package:sizer/sizer.dart';

class CountStepper extends StatefulWidget {
  int count;
  CountStepper({Key? key, required this.count}) : super(key: key);

  @override
  State<CountStepper> createState() => _CountStepperState();
}

class _CountStepperState extends State<CountStepper> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 23.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildDecreaseButton(),
          _buildCountText(context),
          _buildIncreaseButton(),
        ],
      ),
    );
  }

  Text _buildCountText(BuildContext context) {
    return Text(
      "${widget.count} Kg",
      style: context.theme.textTheme.caption!
          .copyWith(color: context.theme.colorScheme.primaryVariant, fontWeight: FontWeight.bold),
    );
  }

  ButtonBody _buildIncreaseButton() {
    return ButtonBody(
      icon: Icons.add_rounded,
      onTap: () {
        setState(() {
          widget.count++;
        });
      },
    );
  }

  ButtonBody _buildDecreaseButton() {
    return ButtonBody(
      icon: Icons.remove_rounded,
      onTap: () {
        setState(() {
          widget.count--;
        });
      },
    );
  }
}

class ButtonBody extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const ButtonBody({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: _buildButtonBodyDetails(context),
    );
  }

  Container _buildButtonBodyDetails(BuildContext context) {
    return Container(
      width: 6.w,
      height: 6.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: context.stepperGradient(context),
          borderRadius: BorderRadius.all(Radius.circular(context.lowValue / 12))),
      child: Icon(icon, color: context.theme.colorScheme.onBackground, size: 4.w),
    );
  }
}
