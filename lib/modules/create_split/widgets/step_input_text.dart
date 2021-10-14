import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class StepInputText extends StatelessWidget {
  final void Function(String)? onChange;
  final String hintText;
  final TextAlign align;
  final String? initialValue;
  final EdgeInsets? padding;
  final TextEditingController? controller;
  final TextInputType textInputType;

  const StepInputText({
    Key? key,
    this.onChange,
    required this.hintText,
    this.align = TextAlign.center,
    this.padding,
    this.controller,
    this.textInputType = TextInputType.text,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 64),
      child: TextFormField(
        initialValue: initialValue,
        controller: controller,
        keyboardType: textInputType,
        onChanged: onChange,
        textAlign: align,
        style: AppTheme.textStyles.textField,
        cursorColor: AppTheme.colors.backgroundSecondary,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTheme.textStyles.hintTextField,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.inputBorder,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.divider,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppTheme.colors.inputBorder),
          ),
        ),
      ),
    );
  }
}
