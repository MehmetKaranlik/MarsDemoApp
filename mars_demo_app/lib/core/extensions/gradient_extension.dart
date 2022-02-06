import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

extension Gradients on BuildContext {
  LinearGradient stepperGradient(BuildContext context) => LinearGradient(
      colors: [context.theme.colorScheme.primary, context.theme.colorScheme.primary.withOpacity(0.5)],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter);
}
