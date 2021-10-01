import 'package:mobx/mobx.dart';
import 'package:split_it/shared/repositories/firebase_repository.dart';
part 'step_two_controller.g.dart';

class StepTwoController = _StepTwoControllerBase with _$StepTwoController;

abstract class _StepTwoControllerBase with Store {
  final repository = FirebaseRepository();

  @observable
  List<Map<String, dynamic>> friends = [];

  @action
  void onChange(String value) {
    final filteredList = friends
        .where(
          (element) => element['name'].contains(value),
        )
        .toList();
    friends = filteredList;
  }

  @action
  Future<void> getFriends() async {
    final response = await this.repository.get("/friends");
    friends = response;
  }
}
