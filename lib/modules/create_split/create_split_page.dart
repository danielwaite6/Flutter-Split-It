import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.purple,
    )
  ];

  var index = 0;

  void nextPage() {
    if (index < 2) {
      index++;
      setState(() {});
    }
  }

  void backPage() {
    if (index > 0) {
      index--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: SafeArea(
            top: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    backPage();
                  },
                ),
                Text.rich(
                  TextSpan(
                      text: "${index + 1}",
                      style: AppTheme.textStyles.stepperIndicatorPrimary,
                      children: [
                        TextSpan(
                            text: " - ${pages.length}",
                            style:
                                AppTheme.textStyles.stepperIndicatorSecondary)
                      ]),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60)),
      body: pages[index],
      floatingActionButton: index < 2
          ? FloatingActionButton(
              onPressed: () {
                nextPage();
              },
              child: Icon(Icons.add),
            )
          : Container(),
    );
  }
}
