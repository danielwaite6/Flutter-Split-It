import 'package:mobx/mobx.dart';
import 'package:split_it/shared/repositories/firebase_repository.dart';
part 'step_two_controller.g.dart';

class StepTwoController = _StepTwoControllerBase with _$StepTwoController;

abstract class _StepTwoControllerBase with Store {
  final repository = FirebaseRepository();

  @observable
  List<Map<String, dynamic>> _friends = [];

  @observable
  ObservableList<Map<String, dynamic>> _selectedFriends = ObservableList.of([]);

  List<Map<String, dynamic>> get selectedFriends => _selectedFriends;

  @observable
  String search = "";

  @action
  void onChange(String value) {
    search = value;
  }

  @action
  void addFriends(Map<String, dynamic> friend) {
    _selectedFriends.add(friend);
  }

  @action
  void removeFriends(Map<String, dynamic> friend) {
    _selectedFriends.remove(friend);
  }

  @computed
  List<Map<String, dynamic>> get items {
    if (_selectedFriends.isNotEmpty) {
      final filteredList = _friends.where((element) {
        final contains = element['name']
            .toString()
            .toLowerCase()
            .contains(search.toLowerCase());

        final notAdd = !_selectedFriends.contains(element);
        return contains && notAdd;
      }).toList();
      return filteredList;
    }

    if (search.isEmpty) {
      return _friends;
    } else {
      final filteredList = _friends
          .where(
            (element) => element['name']
                .toString()
                .toLowerCase()
                .contains(search.toLowerCase()),
          )
          .toList();
      return filteredList;
    }
  }

  @action
  Future<void> getFriends() async {
    final response = await this.repository.get("/friends");
    _friends = response;
  }
}
