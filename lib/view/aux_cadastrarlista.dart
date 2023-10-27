import 'package:flutter/material.dart';
import 'package:listadecomprass/custom/customText.dart';
import 'package:listadecomprass/utils/colors.dart';

class Aux_CadastrarLista extends StatefulWidget {
  const Aux_CadastrarLista({Key? key}) : super(key: key);

  @override
  _Aux_CadastrarListaState createState() => _Aux_CadastrarListaState();
}

class _Aux_CadastrarListaState extends State<Aux_CadastrarLista> {
  final _formKey = GlobalKey<FormState>();
  bool _formValid = false;
  TextEditingController _nomeLista = TextEditingController();

  void _validateForm() {
    _formKey.currentState?.validate();
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
    _nomeLista.addListener(_validateForm);
  }

  @override
  void dispose() {
    super.dispose();
    _nomeLista.removeListener(_validateForm);
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Título do Alert'),
          content: Text('Conteúdo do Alert'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fechar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CustomText(
                title: 'Cadastrar lista',
                color: ColorsCoworking.textpage,
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _nomeLista,
                  decoration: InputDecoration(
                    errorStyle:
                    TextStyle(color: _formValid ? Colors.blue : Colors.red),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: _formValid ? Colors.blue : Colors.red,
                      ),
                    ),
                    labelText: "Nome lista",
                  ),
                  onChanged: (value) {
                    setState(() {
                      _formValid = value.isNotEmpty;
                    });
                  },
                  validator: _validarEntrada,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAlertDialog();
        },
        tooltip: 'Cadastrar itens',
        child: const Icon(Icons.add),
      ),
    );
  }
}
