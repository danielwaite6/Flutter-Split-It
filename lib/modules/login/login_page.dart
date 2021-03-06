import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx/mobx.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(
      service: LoginServiceImpl(),
    );
    autorun((_) {
      if (controller.state is LoginStateSuccess) {
        final user = (controller.state as LoginStateSuccess).user;

        Navigator.pushReplacementNamed(context, '/home', arguments: user);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 236,
            child: Text(
              "Divida suas contas com seus amigos",
              style: GoogleFonts.bigShouldersDisplay(
                fontSize: 40,
                color: AppTheme.colors.title,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: Image.asset('assets/images/emoji.png'),
                title: Text(
                  "Faça seu login com uma das contas abaixo",
                  style: AppTheme.textStyles.button,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Observer(builder: (context) {
                if (controller.state is LoginStateLoading)
                  return CircularProgressIndicator();
                else if (controller.state is LoginStateFailure)
                  return Text((controller.state as LoginStateFailure).message);
                else
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: SocialButtonWidget(
                      imagePath: "assets/images/google.png",
                      label: "Entrar com Google",
                      onTap: () {
                        controller.googleSignIn();
                      },
                    ),
                  );
              }),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SocialButtonWidget(
                  imagePath: "assets/images/apple.png",
                  label: "Entrar com Apple",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
