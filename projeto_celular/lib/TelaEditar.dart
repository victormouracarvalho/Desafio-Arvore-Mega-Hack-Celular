import 'package:flutter/material.dart';
import 'package:projetocelular/PaginaUsuario.dart';

class TelaEditar extends StatefulWidget {
  @override
  _TelaEditar createState() => _TelaEditar();
}

class _TelaEditar extends State<TelaEditar> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Perfil", textAlign: TextAlign.center),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/blue_login.jpg", fit: BoxFit.scaleDown),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Altere as informações da sua conta",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Nome Completo",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                controller: _controllerNome,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                controller: _controllerEmail,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Cidade",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                controller: _controllerCidade,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Estado",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                controller: _controllerEstado,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Escola",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                controller: _controllerEscola,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Senha",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                obscureText: true,
                controller: _controllerSenha,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Confirme sua senha",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                obscureText: true,
                controller: _controllerSenhaConfirma,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.cyan,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                  onPressed: _abrirPaginaUsuario,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
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
