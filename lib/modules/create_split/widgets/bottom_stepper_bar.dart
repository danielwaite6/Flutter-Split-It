import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/widgets/stepper_next_button.dart';
import 'package:split_it/theme/app_theme.dart';

class BottomStepperBar extends StatelessWidget {
  final VoidCallback onTapCancel;
  final VoidCallback onTapNext;
  final CreateSplitController controller;

  const BottomStepperBar({
    Key? key,
    required this.onTapCancel,
    required this.onTapNext,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Column(
        children: [
          Row(
            children: [
              Observer(
                builder: (_) => StepperNextButton(
                    label: "Cancelar",
                    enabled: controller.enableNavigateButton,
                    onTap: onTapCancel),
              ),
              Container(
                width: 1,
                height: 60,
                color: AppTheme.colors.divider,
              ),
              Observer(
                builder: (_) => StepperNextButton(
                  label: "Continuar",
                  onTap: onTapNext,
                  enabled: controller.enableNavigateButton,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
