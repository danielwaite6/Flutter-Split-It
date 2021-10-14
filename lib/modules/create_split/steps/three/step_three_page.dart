import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/steps/three/step_three_controller.dart';
import 'package:split_it/modules/create_split/widgets/add_text_button.dart';
import 'package:split_it/modules/create_split/widgets/step_multi_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepThreePage extends StatefulWidget {
  StepThreePage({Key? key}) : super(key: key);

  @override
  _StepThreePageState createState() => _StepThreePageState();
}

class _StepThreePageState extends State<StepThreePage> {
  final controller = StepThreeController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitle(
          title: "Qual ou quais",
          subTitle: "\nitens você quer dividir ?",
        ),
        Observer(
          builder: (_) => StepMultiInputText(
            key: UniqueKey(),
            count: controller.currentIndex,
            itemName: (value) {
              controller.onChanged(name: value);
            },
            itemValue: (value) {
              controller.onChanged(value: value);
            },
          ),
        ),
        Observer(
          builder: (_) => Column(children: [
            for (var i = 0; i < controller.items.length; i++)
              StepMultiInputText(
                key: Key([i].hashCode.toString()),
                isRemoved: true,
                initialName: controller.items[i].name,
                initialValue: controller.items[i].value,
                count: i + 1,
                itemName: (value) {},
                itemValue: (value) {},
                onDelete: () {
                  controller.removeItem(i);
                },
              ),
          ]),
        ),
        SizedBox(
          height: 24,
        ),
        Observer(
          builder: (_) => controller.showButton
              ? AddTextButton(
                  label: "Continuar",
                  onPressed: () {
                    controller.addItem();
                  },
                )
              : Container(),
        ),
      ],
    );
  }
}
