import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _contador = 0;

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
            Text('Numero de taps', style: _estiloTexto),
            Text('$_contador', style: _estiloTexto),
          ],
        )),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            _contador = 0;
            setState(() {});
          },
        ),
        Expanded (child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            if (_contador>0)
            _contador--;
            setState(() {});
          },
        ),
        SizedBox(width: 5.0,),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _contador++;
            setState(() {});
          },
        ),
      ],
    );
  }
}

/*Fluttertoast.showToast(
              msg: "Se apreto el boton +",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              timeInSecForIos: 1);*/
