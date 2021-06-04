import 'package:flutter/material.dart';

void main() => runApp(RiojasApp());

class RiojasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicacion de Riojas Katia',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: IngresoSistema(),
    ); //MaterialApp
  } //Widget
} //RiojasApp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} //IngresoSistema

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        title: Text('Ingreso Sistema Riojas'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //Widget
      ), //Appbar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/dimond.png'),
                SizedBox(height: 16.0),
              ],
            ),
            if (!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Nombre Usuario',
                    ),
                  ), //Fin Text Field

                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Contraseña',
                    ),
                    obscureText: true,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Aceptar'),
                          color: Colors.green[200],
                          padding: EdgeInsets.all(10.0),
                          onPressed: () {
                            setState(() {
                              acceso = false;
                            });
                          },
                        ), //Fin FlatButton
                        new Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        RaisedButton(
                          child: Text(
                            'Cancelar',
                          ),
                          color: Colors.red[200],
                          onPressed: () {
                            setState(() {
                              acceso = true;
                            });
                          },
                        ), //Raised Button
                      ], //Widget
                    ), //Row
                  ) //Padding
                ], //Widget
              ) //Columna
            else
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "YAY! Ya esta Registrado",
                    ),
                    RaisedButton(
                      elevation: 20.0,
                      child: Text('Finalizar'),
                      color: Colors.green[200],
                      onPressed: () {
                        setState(() {
                          acceso = false;
                        });
                      },
                    ) //Boton
                  ], //Widget
                ),
              ) //If
          ], //Widgets
        ), //ListView
      ), //Area segura
    ); //Scaffold
  } //Widget
} //Ingreso Sistema
