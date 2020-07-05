import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';

class TelaQRCode extends StatefulWidget {
  @override
  _TelaQRCode createState() => _TelaQRCode();
}

class _TelaQRCode extends State<TelaQRCode> {
  String result = "Escaneie seus livros no totem";
  String result2 = "Escaneie seus livros no totem";

  String code;
  scanQRCode () async{
    try {
      final result = await BarcodeScanner.scan();
      setState(() {
        code = result as String;
      });
    } catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("QR Code"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.cyan,
        label: Text('Escanear'),
        icon: Icon(Icons.camera_alt),
        onPressed: scanQRCode,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Text(
          result,
          style: TextStyle(color: Colors.cyan, fontSize: 25),
        ),
      ),
    );
  }
}