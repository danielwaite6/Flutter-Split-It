import 'package:mobx/mobx.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';

class LoginController {
  final _state = Observable<LoginState>(LoginStateEmpty());
  LoginState get state => _state.value;
  set state(LoginState state) => _state.value = state;

  final LoginService service;

  LoginController({required this.service});

  void update(LoginState state) {
    var action = Action(() {
      this.state = state;
    });
    action();
  }

  Future<void> googleSignIn() async {
    try {
      update(LoginStateLoading());
      final user = await service.googleSignIn();
      update(LoginStateSuccess(user: user));
    } catch (error) {
      update(LoginStateFailure(message: error.toString()));
    }
  }
}
