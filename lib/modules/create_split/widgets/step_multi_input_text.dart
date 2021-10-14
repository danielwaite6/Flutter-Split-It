import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';

class StepMultiInputText extends StatelessWidget {
  final int count;
  final ValueChanged<String> itemName;
  final ValueChanged<double> itemValue;

  StepMultiInputText({
    Key? key,
    required this.count,
    required this.itemName,
    required this.itemValue,
  }) : super(key: key);

  final valueInputTextController =
      MoneyMaskedTextController(leftSymbol: "R\$", decimalSeparator: ",");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("1"),
          ),
          Expanded(
            flex: 3,
            child: StepInputText(
              padding: EdgeInsets.zero,
              onChange: (value) {
                itemName(value);
              },
              hintText: "Ex. Picanha",
              align: TextAlign.start,
            ),
          ),
          Expanded(
            child: StepInputText(
              textInputType: TextInputType.number,
              controller: valueInputTextController,
              padding: EdgeInsets.zero,
              onChange: (value) {
                itemValue(valueInputTextController.numberValue);
              },
              hintText: "R\$ 0,00",
              align: TextAlign.start,
            ),
          ),
          IconButton(icon: Icon(Icons.delete), onPressed: () {}),
        ],
      ),
    );
  }
}
