// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_two_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StepTwoController on _StepTwoControllerBase, Store {
  Computed<List<Map<String, dynamic>>>? _$itemsComputed;

  @override
  List<Map<String, dynamic>> get items => (_$itemsComputed ??=
          Computed<List<Map<String, dynamic>>>(() => super.items,
              name: '_StepTwoControllerBase.items'))
      .value;

  final _$_friendsAtom = Atom(name: '_StepTwoControllerBase._friends');

  @override
  List<Map<String, dynamic>> get _friends {
    _$_friendsAtom.reportRead();
    return super._friends;
  }

  @override
  set _friends(List<Map<String, dynamic>> value) {
    _$_friendsAtom.reportWrite(value, super._friends, () {
      super._friends = value;
    });
  }

  final _$_selectedFriendsAtom =
      Atom(name: '_StepTwoControllerBase._selectedFriends');

  @override
  ObservableList<Map<String, dynamic>> get _selectedFriends {
    _$_selectedFriendsAtom.reportRead();
    return super._selectedFriends;
  }

  @override
  set _selectedFriends(ObservableList<Map<String, dynamic>> value) {
    _$_selectedFriendsAtom.reportWrite(value, super._selectedFriends, () {
      super._selectedFriends = value;
    });
  }

  final _$searchAtom = Atom(name: '_StepTwoControllerBase.search');

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$getFriendsAsyncAction =
      AsyncAction('_StepTwoControllerBase.getFriends');

  @override
  Future<void> getFriends() {
    return _$getFriendsAsyncAction.run(() => super.getFriends());
  }

  final _$_StepTwoControllerBaseActionController =
      ActionController(name: '_StepTwoControllerBase');

  @override
  void onChange(String value) {
    final _$actionInfo = _$_StepTwoControllerBaseActionController.startAction(
        name: '_StepTwoControllerBase.onChange');
    try {
      return super.onChange(value);
    } finally {
      _$_StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addFriends(Map<String, dynamic> friend) {
    final _$actionInfo = _$_StepTwoControllerBaseActionController.startAction(
        name: '_StepTwoControllerBase.addFriends');
    try {
      return super.addFriends(friend);
    } finally {
      _$_StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFriends(Map<String, dynamic> friend) {
    final _$actionInfo = _$_StepTwoControllerBaseActionController.startAction(
        name: '_StepTwoControllerBase.removeFriends');
    try {
      return super.removeFriends(friend);
    } finally {
      _$_StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
items: ${items}
    ''';
  }
}
