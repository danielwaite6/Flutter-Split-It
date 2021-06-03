import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/event_tile_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final events = [
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 1500,
      people: 1,
    ),
    EventModel(
      title: "Churrasco 2",
      created: DateTime.now(),
      value: -500,
      people: 1,
    ),
    EventModel(
      title: "Churrasco 3",
      created: DateTime.now(),
      value: -500,
      people: 1,
    ),
    EventModel(
      title: "Churrasco 4",
      created: DateTime.now(),
      value: -500,
      people: 1,
    ),
    EventModel(
      title: "Churrasco 5",
      created: DateTime.now(),
      value: -500,
      people: 1,
    ),
    EventModel(
      title: "Churrasco 6",
      created: DateTime.now(),
      value: -500,
      people: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;

    return Scaffold(
      appBar: AppBarWidget(
        user: user,
        onTapAddButton: () {},
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...events
                    .map(
                      (e) => EventTileWidget(model: e),
                    )
                    .toList()
              ],
            ),
          )),
    );
  }
}
