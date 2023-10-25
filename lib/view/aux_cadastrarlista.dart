import 'package:flutter/material.dart';
import '../custom/customText.dart';
import '../utils/colors.dart';

class Aux_CadastrarLista extends StatefulWidget {
  const Aux_CadastrarLista({Key? key}) : super(key: key);

  @override
  _Aux_CadastrarListaState createState() => _Aux_CadastrarListaState();
}

class _Aux_CadastrarListaState extends State<Aux_CadastrarLista> {
  final _formKey = GlobalKey<FormState>();
  bool _formValido = false;

  TextEditingController _nomeItem = TextEditingController();
  TextEditingController _quantidade = TextEditingController();
  TextEditingController _nomeLista = TextEditingController();

  List<Widget> itemFields = [];

  @override
  void initState() {
    super.initState();
    _nomeItem.addListener(_validacaoFormulario);
    _quantidade.addListener(_validacaoFormulario);
    _nomeLista.addListener(_validacaoFormulario);
  }

  @override
  void dispose() {
    super.dispose();
    _nomeItem.removeListener(_validacaoFormulario);
    _quantidade.removeListener(_validacaoFormulario);
    _nomeLista.removeListener(_validacaoFormulario);
  }

  void _validacaoFormulario() {
    setState(() {
      _formValido = _formKey.currentState?.validate() ?? false;
    });
  }

  String? _validarEntrada(String? mensagem) {
    if (mensagem == null || mensagem.isEmpty) {
      return 'Preencha o campo';
    }
    return null;
  }

  void _adicionarItemField() {
    setState(() {
      itemFields.add(
        Row(
          children: [
            Expanded(
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    color: _formValido ? Colors.blue : Colors.red,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: _formValido ? Colors.blue : Colors.red,
                    ),
                  ),
                  labelText: "Nome do item",
                ),
                onChanged: (value) => _validacaoFormulario(),
                validator: _validarEntrada,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    color: _formValido ? Colors.blue : Colors.red,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: _formValido ? Colors.blue : Colors.red,
                    ),
                  ),
                  labelText: "Quantidade",
                ),
                onChanged: (value) => _validacaoFormulario(),
                validator: _validarEntrada,
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _adicionarItemField,
            ),
          ],
        ),
      );
    });
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
            Container(
              color: ColorsCoworking.containerform,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _nomeLista,
                        decoration: InputDecoration(
                          errorStyle: TextStyle(
                            color: _formValido ? Colors.blue : Colors.red,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _formValido ? Colors.blue : Colors.red,
                            ),
                          ),
                          labelText: "Nome da lista",
                        ),
                        onChanged: (value) => _validacaoFormulario(),
                        validator: _validarEntrada,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: _adicionarItemField,
                          ),
                        ],
                      ),
                      ...itemFields,
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              ColorsCoworking.ButtonLogin),
                        ),
                        onPressed: _formValido ? () {
                          print(itemFields);
                        } : null,
                        child: CustomText(
                          title: 'Cadastrar Item',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
