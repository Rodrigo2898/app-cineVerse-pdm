import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? usuario; // vai retornar nulo se não tiver usuário logado, se tiver logado vai retornar seus dados
  bool isLoading = true; // controle da mudança de telas

  AuthService() {
    _authCheck(); // verificar toda inicialização do login do usuário
  }

  _authCheck() {
    _auth.authStateChanges().listen((User? user) {
      usuario = (user == null) ? null : user;
      isLoading = false;
      notifyListeners();
    });
  }
}