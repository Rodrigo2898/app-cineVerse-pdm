import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
//import 'package:flutter/widgets.dart';
import 'package:moviesm/src/feature/auth/view/widget/auth_check.dart';

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app_name'.i18n(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 19, 3, 100)
      ),
      home: const AuthCheck(),
    );
  }
}
