import 'package:flutter/material.dart';
import 'package:projetocelular/TelaEditar.dart';
import 'package:projetocelular/TelaLivros.dart';
import 'package:projetocelular/TelaQRCode.dart';


class PaginaUsuario extends StatefulWidget {
  @override
  _PaginaUsuarioState createState() => _PaginaUsuarioState();
}

class _PaginaUsuarioState extends State<PaginaUsuario> {

  void _abrirEditor(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaEditar() ));
  }
   void _abrirQRCode(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaQRCode() ));
  }
  void _abrirLivros(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaLivros() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página do Usuário", textAlign: TextAlign.center),
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
              Image.asset("images/blue_login.jpg", fit: BoxFit.contain),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "João Silva",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Estudante da Escola Árvore",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Campinas - São Paulo",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Editar",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onPressed: _abrirEditor
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Livros baixados: ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.cyan
                      ),
                    ),
                    Text(
                      "50",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.cyan
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Posição no Ranking: ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.cyan
                      ),
                    ),
                    Text(
                      "10º lugar",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.cyan
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Pontos no Ranking: ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.cyan
                      ),
                    ),
                    Text(
                      "200",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.cyan
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Baixe seus livros!",
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    onPressed: _abrirQRCode ,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Meus livros!",
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                    onPressed: _abrirLivros ,
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

