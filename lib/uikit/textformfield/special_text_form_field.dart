import 'package:stack_overflow_clone/core/extensions/ui_extensions.dart';
import 'package:flutter/material.dart';
import 'package:stack_overflow_clone/core/theme/color/my_colors.dart';

class SpecialTextFormField extends Theme {
  SpecialTextFormField({
    Key? key,
    required BuildContext context,
    required String labelText,
    Widget? prefixIcon,
    IconData? suffixIcon,
    String? hintText,
    bool obscureText = false,
    Color? color,
    VoidCallback? onTap,
    TextEditingController? controller,
    String? Function(String?)? validator,
    TextStyle? labelStyle,
    TextStyle? hintStyle,
    String? initialValue,
    bool readOnly = false,
    TextInputType? keyboardType,
    OutlineInputBorder? enabledBorder,
    OutlineInputBorder? focusedBorder,
  }) : super(
          key: key,
          data: Theme.of(context).copyWith(
            colorScheme: ThemeData().colorScheme.copyWith(
                  primary: color ?? MyColors.instance.black,
                ),
          ),
          child: TextFormField(
            readOnly: readOnly,
            controller: controller,
            validator: validator,
            initialValue: initialValue,
            onTap: onTap,
            cursorColor: color ?? MyColors.instance.black,
            obscureText: obscureText,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: Icon(suffixIcon),
              labelText: labelText,
              labelStyle: labelStyle ??
                  context.textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.instance.grey),
              floatingLabelStyle: context.textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w700,
              ),
              hintText: hintText,
              hintStyle: hintStyle ??
                  context.textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
              enabledBorder: enabledBorder,
              focusedBorder: focusedBorder,
            ),
            style: context.textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.w800,
            ),
            keyboardType: keyboardType,
          ),
        );
}