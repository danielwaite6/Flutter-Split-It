import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_controller.dart';
import 'package:split_it/modules/create_split/widgets/person_tile.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepTwoPage extends StatefulWidget {
  StepTwoPage({Key? key}) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  final controller = StepTwoController();

  @override
  void initState() {
    controller.getFriends();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitle(
          title: "Com quem",
          subTitle: "\nvocê quer dividir ?",
        ),
        StepInputText(
          hintText: "Nome da Pessoa",
          onChange: (value) {
            controller.onChange(value);
          },
        ),
        SizedBox(
          height: 35,
        ),
        Observer(builder: (_) {
          if (controller.items.isEmpty) {
            return Text("Nenhum amigo encontrado.");
          } else {
            return Column(
              children: controller.items
                  .map(
                    (e) => PersonTile(name: e['name']),
                  )
                  .toList(),
            );
          }
        }),
      ],
    );
  }
}
