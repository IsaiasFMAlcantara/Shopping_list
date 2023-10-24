import 'package:flutter/material.dart';

import '../control/c_firebase.dart';
import '../custom/customText.dart';
import '../utils/colors.dart';

class Aux_GerenciarConta extends StatefulWidget {
  const Aux_GerenciarConta({super.key});

  @override
  State<Aux_GerenciarConta> createState() => _Aux_GerenciarContaState();
}

class _Aux_GerenciarContaState extends State<Aux_GerenciarConta> {
  final _formkey = GlobalKey<FormState>();

  bool _formValido = false;
  TextEditingController _emailvalido = TextEditingController();
  TextEditingController _senhavalida = TextEditingController();

  void _validacaoFormulario() {
    _formkey.currentState?.validate();
  }

  String _validarEntrada(String? mensagem) {
    if (mensagem == null || mensagem.isEmpty) {
      return 'Preencha o campo';
    } else {
      return 'Campo preenchido';
    }
  }

  @override
  void initState() {
    super.initState();
    _emailvalido.addListener(_validacaoFormulario);
    _senhavalida.addListener(_validacaoFormulario);
  }

  @override
  void dispose() {
    super.dispose();
    _emailvalido.removeListener(_validacaoFormulario);
    _senhavalida.removeListener(_validacaoFormulario);
  }

  @override
  Widget build(BuildContext context) {
    CadastrarUsuario cadastrarUsuario = CadastrarUsuario(context);
    return Scaffold(
      body: Column(
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
          Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailvalido,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                        color: _formValido ? Colors.blue : Colors.red),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: _formValido ? Colors.blue : Colors.red),
                    ),
                    labelText: "E-mail",
                  ),
                  onChanged: (value) {
                    setState(() {
                      _formValido = value.isNotEmpty;
                    });
                  },
                  validator: _validarEntrada,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _senhavalida,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                        color: _formValido ? Colors.blue : Colors.red),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: _formValido ? Colors.blue : Colors.red)),
                    labelText: "Password",
                  ),
                  onChanged: (value) {
                    setState(() {
                      _formValido = value.isNotEmpty;
                    });
                  },
                  validator: _validarEntrada,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(ColorsCoworking.ButtonLogin),
                  ),
                  onPressed: () {
                    cadastrarUsuario.cadastraruser(
                      _emailvalido.text,
                      _senhavalida.text,
                    );
                  },
                  child: CustomText(
                    title: 'Cadastrar Usuário',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
