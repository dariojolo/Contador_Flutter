import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 25);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Numero de taps', style: estiloTexto),
          Text('0', style: estiloTexto),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Fluttertoast.showToast(
              msg: "Se apreto el boton +",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              timeInSecForIos: 1);
        },
      ),
    );
  }
}
