import 'package:flutter/material.dart';
import 'package:listadecomprass/custom/customText.dart';
import 'package:listadecomprass/utils/colors.dart';
import 'package:listadecomprass/view/form_emailsenha.dart';

class Aux_Login extends StatefulWidget {
  const Aux_Login({super.key});

  @override
  State<Aux_Login> createState() => _Aux_LoginState();
}

class _Aux_LoginState extends State<Aux_Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: ColorsCoworking.ContainerLogin,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.person,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(title: 'Área Login'),
            SizedBox(
              height: 50,
            ),
            FormEmailSenha(title: 'Login'),
          ],
        ),
      ),
    );
  }
}
