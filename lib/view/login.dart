import 'package:flutter/material.dart';
import 'package:listadecomprass/view/aux_login.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Aux_Login();
  }
}
