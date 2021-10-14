import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/step_multi_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepThreePage extends StatefulWidget {
  StepThreePage({Key? key}) : super(key: key);

  @override
  _StepThreePageState createState() => _StepThreePageState();
}

class _StepThreePageState extends State<StepThreePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitle(
          title: "Qual ou quais",
          subTitle: "\nitens você quer dividir ?",
        ),
        StepMultiInputText(
          count: 1,
          itemName: (value) {},
          itemValue: (value) {},
        ),
      ],
    );
  }
}
