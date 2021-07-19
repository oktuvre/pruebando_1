import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi Primera Aplicacion",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi 1ra aplicación'),
          leading: Icon(Icons.menu),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text('Clicks: $n'),
            ElevatedButton(
              child: Text('Agregar'),
              onPressed: sumar,
            ),
            ElevatedButton(
              child: Text('Quitar'),
              onPressed: null,
            ),
            Image.asset('assets/images/login.png'),
          ],
        ),
      ),
    ),
    );
  }
  int n = 0;
  sumar(){
    setState(() => n++);
  }
}