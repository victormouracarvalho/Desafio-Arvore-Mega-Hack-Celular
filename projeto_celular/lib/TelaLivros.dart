import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaLivros extends StatefulWidget {
  @override
  _TelaLivrosState createState() => _TelaLivrosState();
}

class _TelaLivrosState extends State<TelaLivros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Meus Livros"),
      ),
        body: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          child: SingleChildScrollView(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 30),
                  child: Text(
                    "Lista de livros baixados: ",
                    style: TextStyle(
                    fontSize: 22,
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                    ),
                    textAlign: TextAlign.start,
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            "Livro 1",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.cyan
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                            "Página 30/100",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black38
                          ),
                        )
                      ],
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Livro 2",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.cyan
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Página 75/570",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black38
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Livro 3",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.cyan
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Página 26/250",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black38
                        ),
                      )
                    ],
                  ),
                ),
              Padding(
                padding: EdgeInsets.only(top: 180),
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
