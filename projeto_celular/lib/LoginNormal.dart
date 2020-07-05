import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetocelular/PaginaUsuario.dart';


class LoginNormal extends StatefulWidget {
  @override
  _LoginNormalState createState() => _LoginNormalState();
}

class _LoginNormalState extends State<LoginNormal> {

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

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
        title: Text("Login", textAlign: TextAlign.center),
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
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 30),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.cyan,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Endereço de Email",
                ),
                style:  TextStyle(
                  fontSize: 18,
                ),
                controller: _controllerEmail,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Senha",
                ),
                style:  TextStyle(
                  fontSize: 18,
                ),
                obscureText: true,
                controller: _controllerSenha,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 35),
                  child: Text(
                    "Esqueci minha senha!",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.cyan
                    ),
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: RaisedButton(
                  color: Colors.cyan,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  onPressed: _abrirPaginaUsuario,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
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
