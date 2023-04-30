// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:moviesm/src/feature/auth/services/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:moviesm/src/feature/home/view/page/loginpage.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();  
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context); // acesso ao provider de autenticação
    
    if(auth.isLoading) {
      return loading(); // vefificando se o firebase está carregando
    } else if(auth.usuario == null) {
      return const LoginPage(); // retorna o LoginPage
    }
    //else return HomePage();
    return Container(
      child: null,
    );
  }

  loading() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}