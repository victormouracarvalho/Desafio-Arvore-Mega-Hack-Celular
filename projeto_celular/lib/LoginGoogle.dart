import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetocelular/PaginaUsuario.dart';

class LoginGoogle extends StatefulWidget {
  @override
  _LoginGoogleState createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogle> {

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
        title: Text("Login com Google", textAlign: TextAlign.center),
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
                Image.asset("images/logo_Google.png", fit: BoxFit.contain),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Faça seu login com a sua conta do Google",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
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
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                    onPressed: _abrirPaginaUsuario,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
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
          )
      ),
    );
  }
}