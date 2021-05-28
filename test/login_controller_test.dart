import 'package:flutter_test/flutter_test.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class LoginServiceMock implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    return UserModel(email: "daniel.waiterman66@gmail.com", id: "id");
  }
}

void main() {
  late LoginController controller;
  setUp(() {
    controller = LoginController(service: LoginServiceMock(), onUpdate: () {});
  });

  test("Testando o Google SignIn retornando sucesso", () async {
    //print(controller.state);
    expect(controller.state, isInstanceOf<LoginStateEmpty>());

    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    await controller.googleSignIn();

    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateSuccess>());
    expect(states.length, 2);
  });

  test("Testando o Google SignIn retornando Failure", () async {
    //print(controller.state);
    expect(controller.state, isInstanceOf<LoginStateEmpty>());

    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    await controller.googleSignIn();

    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateFailure>());
    expect(states.length, 2);
  });
}
