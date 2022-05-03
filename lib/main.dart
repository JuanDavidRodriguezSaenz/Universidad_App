import 'package:flutter/material.dart';
import 'package:rodriguez/galeriadeimagenes.dart';

void main() {
  runApp(MiEscuelaParticularApp());
} // funcion principal

class MiEscuelaParticularApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App para Prepa Particular',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: PaginaInicial());
  } // widget
} // clase prepa particular app widget sin estado
