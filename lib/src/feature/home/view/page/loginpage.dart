import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final senha = TextEditingController();

  bool isLogin = true;
  late String titulo;
  late String actionButton;
  late String toggleButton;

  @override
  void initState() {
    super.initState();
    setFormAction(true);
  }

  setFormAction(bool action) {
    setState(() {
      isLogin = action;
      if (isLogin) {
        titulo = 'login_title'.i18n();
        actionButton = "login_title".i18n();
        toggleButton = "login_button_text".i18n();
      } else {
        titulo = "register_title".i18n();
        actionButton = "register_button_text".i18n();
        toggleButton = "back_to_login_text".i18n();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1.5,
                  ),
                )
              ]
            ),
          ),  
        ),
      ),
    );
  }
}