import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import 'package:split_it/modules/create_split/widgets/step_input_text.dart';

class StepMultiInputText extends StatefulWidget {
  final int count;
  final String? initialName;
  final double? initialValue;
  final ValueChanged<String> itemName;
  final ValueChanged<double> itemValue;
  final bool isRemoved;
  final VoidCallback? onDelete;

  StepMultiInputText({
    Key? key,
    required this.count,
    this.initialName,
    this.initialValue,
    required this.itemName,
    required this.itemValue,
    this.isRemoved = false,
    this.onDelete,
  }) : super(key: key);

  @override
  _StepMultiInputTextState createState() => _StepMultiInputTextState();
}

class _StepMultiInputTextState extends State<StepMultiInputText> {
  late MoneyMaskedTextController valueInputTextController =
      MoneyMaskedTextController(
          initialValue: widget.initialValue ?? 0.0,
          leftSymbol: "R\$",
          decimalSeparator: ",");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("${widget.count}"),
          ),
          Expanded(
            flex: 3,
            child: StepInputText(
              initialValue: widget.initialName,
              padding: EdgeInsets.zero,
              onChange: (value) {
                widget.itemName(value);
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
                widget.itemValue(valueInputTextController.numberValue);
              },
              hintText: "R\$ 0,00",
              align: TextAlign.start,
            ),
          ),
          if (widget.isRemoved)
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                if (widget.onDelete != null) {
                  widget.onDelete!();
                }
              },
            ),
        ],
      ),
    );
  }
}
