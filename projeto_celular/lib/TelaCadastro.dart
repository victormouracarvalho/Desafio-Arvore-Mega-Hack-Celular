import 'package:flutter/material.dart';
import 'package:projetocelular/PaginaUsuario.dart';

class TelaCadastro extends StatefulWidget {
  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {

  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerCidade = TextEditingController();
  TextEditingController _controllerEstado = TextEditingController();
  TextEditingController _controllerEscola = TextEditingController();
  TextEditingController _controllerSenhaConfirma = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();

  void _abrirPaginaUsuario(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaUsuario() ));
  }

  bool _estaSelecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crie sua conta"),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  "Crie sua conta aqui!",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Nome Completo",
                ),
                style:  TextStyle(
                  fontSize: 16,
                ),
                controller: _controllerNome,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
                style:  TextStyle(
                  fontSize: 16,
                ),
                obscureText: true,
                controller: _controllerEmail,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Cidade",
                ),
                style:  TextStyle(
                  fontSize: 16,
                ),
                controller: _controllerCidade,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Estado",
                ),
                style:  TextStyle(
                  fontSize: 16,
                ),
                controller: _controllerEstado,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Escola",
                ),
                style:  TextStyle(
                  fontSize: 16,
                ),
                controller: _controllerEscola,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Senha",
                ),
                style:  TextStyle(
                  fontSize: 16,
                ),
                obscureText: true,
                controller: _controllerSenha,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Confirme sua senha",
                ),
                style:  TextStyle(
                  fontSize: 16,
                ),
                controller: _controllerSenhaConfirma,
                obscureText: true,
              ),
              CheckboxListTile(
                title: Text(
                  "Li e concordo com os termos e condições de uso.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 16
                  ),
                ),
                activeColor: Colors.cyan,
                value: _estaSelecionado,
                onChanged: (bool valor){
                  setState(() {
                    _estaSelecionado = valor;
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: Text(
                  "Termos e Condições de Uso",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.cyan,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.cyan,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Criar conta",
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  onPressed: _abrirPaginaUsuario,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Copyright © 2020 Árvore Educação. Todos os direitos reservados.",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.cyan
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
