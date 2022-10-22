import 'package:stack_overflow_clone/core/theme/color/my_colors.dart';
import 'package:flutter/material.dart';

// Component that provides shadow in the design

class SpecialBoxShadow extends BoxShadow {
  SpecialBoxShadow({
    Color? color,
    double? blurRadius,
  }) : super(
          color: color ?? MyColors.instance.primaryBoxShadowColor,
          offset: const Offset(0, 0),
          blurRadius: blurRadius ?? 30,
          spreadRadius: 0,
        );
}