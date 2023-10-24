import 'package:flutter/material.dart';
import 'package:listadecomprass/custom/customText.dart';
import 'package:listadecomprass/utils/colors.dart';

class FormEmailSenha extends StatefulWidget {
  final String title;

  const FormEmailSenha({
    super.key,
    required this.title,
  });

  @override
  State<FormEmailSenha> createState() => _FormEmailSenhaState();
}

class _FormEmailSenhaState extends State<FormEmailSenha> {
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
    return Form(
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
              errorStyle:
                  TextStyle(color: _formValido ? Colors.blue : Colors.red),
              errorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: _formValido ? Colors.blue : Colors.red),
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
              errorStyle:
                  TextStyle(color: _formValido ? Colors.blue : Colors.red),
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
                            
            },
            child: CustomText(
              title: widget.title,
            ),
          ),
        ],
      ),
    );
  }
}
