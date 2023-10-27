import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
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
  TextEditingController _nomeItem = TextEditingController();
  TextEditingController _quantidadeItem = TextEditingController();

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
    _nomeItem.addListener(_validateForm);
    _quantidadeItem.addListener(_validateForm);
  }

  @override
  void dispose() {
    super.dispose();
    _nomeLista.removeListener(_validateForm);
    _nomeItem.removeListener(_validateForm);
    _quantidadeItem.removeListener(_validateForm);
  }

  void _showAlertDialog() {
    TextEditingController _nomeItemController = TextEditingController();
    TextEditingController _quantidadeItemController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: CustomText(title: 'Cadastrar Item',color: ColorsCoworking.textpage,),
          content: Wrap(
            children: [
              Column(
                children: [
                  TextFormField(
                    controller: _nomeItemController,
                    decoration: InputDecoration(
                      labelText: 'Nome do Item',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _quantidadeItemController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      labelText: 'Quantidade do Item',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String nomeItem = _nomeItemController.text;
                      String quantidadeItem = _quantidadeItemController.text;
                      Get.back();
                    },
                    child: Text('Cadastrar itens'),
                  )
                ],
              ),
            ],
          ),
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
