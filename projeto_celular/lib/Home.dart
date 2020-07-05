import 'package:flutter/material.dart';
import 'package:projetocelular/LoginGoogle.dart';
import 'package:projetocelular/LoginNormal.dart';
import 'package:projetocelular/TelaCadastro.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  void _abrirLoginNormal(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginNormal() ));
  }
  void _abrirLoginGoogle(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginGoogle() ));
  }

  void _abrirTelaCadastro(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaCadastro() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Árvore Educação", textAlign: TextAlign.center,),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo_sem_fundo.png", fit: BoxFit.contain),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 10),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Faça seu login",
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    onPressed: _abrirLoginNormal
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Ou",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.cyan
                    ),
                    textAlign: TextAlign.center,
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Login com Google",
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    onPressed: _abrirLoginGoogle
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 10),
                  child: Text(
                    "Não tem uma conta?",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.cyan
                    ),
                    textAlign: TextAlign.center,
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Crie já a sua!",
                      style: TextStyle(
                          fontSize: 18
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: _abrirTelaCadastro
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
        ),
      ),
    );
  }
}
