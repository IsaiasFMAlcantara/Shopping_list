import 'package:flutter/material.dart';
import 'package:listadecomprass/view/form_emailsenha.dart';
import 'package:listadecomprass/utils/colors.dart';
import 'package:listadecomprass/custom/customText.dart';

class Aux_CriarUsuario extends StatefulWidget {
  const Aux_CriarUsuario({super.key});

  @override
  State<Aux_CriarUsuario> createState() => _Aux_CriarUsuarioState();
}

class _Aux_CriarUsuarioState extends State<Aux_CriarUsuario> {
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
            CustomText(title: 'Cadastro de Usuário'),
            SizedBox(
              height: 50,
            ),
            FormEmailSenha(title: 'Criar Usuário'),
          ],
        ),
      ),
    );
  }
}
