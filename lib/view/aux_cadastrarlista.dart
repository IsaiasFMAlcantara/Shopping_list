import 'package:flutter/material.dart';

import '../custom/customText.dart';
import '../utils/colors.dart';

class Aux_CadastrarLista extends StatefulWidget {
  const Aux_CadastrarLista({super.key});

  @override
  State<Aux_CadastrarLista> createState() => _Aux_CadastrarListaState();
}

class _Aux_CadastrarListaState extends State<Aux_CadastrarLista> {
  final _formkey = GlobalKey<FormState>();
  bool _formValido = false;
  TextEditingController _nomeitem = TextEditingController();
  TextEditingController _quantidade = TextEditingController();

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
    _nomeitem.addListener(_validacaoFormulario);
    _quantidade.addListener(_validacaoFormulario);
  }

  @override
  void dispose() {
    super.dispose();
    _nomeitem.removeListener(_validacaoFormulario);
    _quantidade.removeListener(_validacaoFormulario);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CustomText(
              title: 'Cadastrar Item',
              color: ColorsCoworking.textpage,
            ),
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
                    controller: _nomeitem,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(
                          color: _formValido ? Colors.blue : Colors.red),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: _formValido ? Colors.blue : Colors.red),
                      ),
                      labelText: "Nome do item",
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
                    controller: _quantidade,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(
                          color: _formValido ? Colors.blue : Colors.red),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: _formValido ? Colors.blue : Colors.red),
                      ),
                      labelText: "Quantidade",
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
                      backgroundColor: MaterialStateProperty.all(
                          ColorsCoworking.ButtonLogin),
                    ),
                    onPressed: () {
                    },
                    child: CustomText(
                      title: 'Cadastrar Item',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
